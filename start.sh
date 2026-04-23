#!/bin/bash

tailscaled --tun=userspace-networking --statedir=/var/lib/tailscale &
sleep 3
tailscale up --login-server https://senvas.me --authkey=135f8db2998920da3ccdd5cb053e2805fc3c417c975010ba --ssh
sleep infinity
