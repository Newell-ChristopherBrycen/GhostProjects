# GhostProjects

## Hardware
1. Home Linux Desktop running openSUSE Tumbleweed for primary workstation
2. Raspberry Pi 4 running Ubuntu Server for K3S Node 1
3. Raspberry Pi 5 running Ubuntu Server for K3S Node 2

## Applications
1. ArgoCD:
    a. Connects the GitHub Repo to the Nodes
    b. allows for https://github.com/Newell-ChristopherBrycen/GhostProjects.git to exist as a single point of truth
2. pihole:
    a. serves as an Adblocker for my home environment, keeping my workstation clean and enhancing focus
    b. // Considering moving this to Docker and building it into a standalone service for DNS and Adblock, separate from other services
3. prometheus:
    a. // TODO
