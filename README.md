# Open URLs in VM on host

## Installation

This utility uses `socat` for interaction between VM and host

### Host

```sh
./install-host.sh
```

Forward VM's port 20450 to the same host port 

### VM

```sh
./install-vm.sh
```

Make sure that port 20450 is allowed by firewall