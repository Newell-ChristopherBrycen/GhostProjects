# GhostProjects

## Hardware
1. Home Linux Desktop running openSUSE Tumbleweed for primary workstation
2. Raspberry Pi 4 running Ubuntu Server for K3S Node 1
3. Raspberry Pi 5 running Ubuntu Server for K3S Node 2
4. GL.iNet GL-B3000 running openWRT for Router/DNS services

## Applications
### ArgoCD:
1. Connects the GitHub Repo to the Nodes 
2. Allows for https://github.com/Newell-ChristopherBrycen/GhostProjects.git to exist as a single point of truth 

### Authentik:
1. Set up secure SSO

### MetalLB
1. Allows for BGP and LoadBalancer capabilities on the Baremetal RasPi

### pihole:
1. Serves as an Adblocker for my home environment, keeping my workstation clean and enhancing focus 
2. //Notes// Considering moving this to Docker and building it into a standalone service for DNS and Adblock, separate from other services 

### prometheus:
1. provides monitoring services 
2. //TODO// 

### Joplin:
1. notetaking app for PARA style notes
2. // TODO //

### Homepage:
1. Favorites, from anywhere
2. Dashboard at a glance
