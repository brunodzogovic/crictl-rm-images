# crictl-rm-images
Script for removal of dangling images on remote hosts

The Ansible playbook runs the script on all remote hosts and initiates removal of dangilng images (if any). If you want to use the script with Docker runtime, then replace `crictl` with `docker` in the script.
