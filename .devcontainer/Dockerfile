# Use the same image as the GitHub Action
# hadolint ignore=DL3007
FROM ghcr.io/xu-cheng/texlive-full:latest

# Create the "vscode" user
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# hadolint ignore=DL3018
RUN apk update \
    && apk add --no-cache \
        # Install some development tools
        sudo \
        git

# Create the "vscode" user
RUN addgroup -S -g "${USER_GID}" "${USERNAME}" \
    && adduser -S -s /bin/bash -u "${USER_UID}" -G "${USERNAME}" "${USERNAME}" \
    # Make "vscode" a sudoer
    && echo '%wheel ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/wheel \
    && adduser "${USERNAME}" wheel

# Fix some TeXLive permission issue
# See https://tex.stackexchange.com/questions/571021/use-pandoc-latex-on-docker-with-lualatex-pdf-engine-and-tex-gyre-fonts
RUN chmod -R o+w /opt/texlive/texdir/texmf-var
