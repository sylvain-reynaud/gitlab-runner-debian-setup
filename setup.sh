#!/bin/bash

# Download the binary for your system
curl -L --output /usr/local/bin/gitlab-runner https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-amd64

# Give it permissions to execute
chmod +x /usr/local/bin/gitlab-runner

# Create a GitLab CI user
useradd --comment 'GitLab Runner' --create-home gitlab-runner --shell /bin/bash

# Install and run as service
gitlab-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner
gitlab-runner start

