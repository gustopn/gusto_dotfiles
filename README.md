# gusto_dotfiles

my users dotfiles + some other useful server config files

## sshd_config(.local)

do not forget to set the permissions for `sshd_config.local` to read-write for root only when installed.

```
chown 0:0 /etc/ssh/sshd_config*
chmod 0640 /etc/ssh/sshd_config*
```

- Our custom sshd configuration does not bind to IPv6 addresses.<br>
  For jails it cuts off SSH reachability completely, but not for host computer.<br>
  To protect the host computer you need to block SSH port on switch and/or state-firewall it.

- In order to get then to the computer remotely over SSH you need to set up a VPN.

- But remember that a VPN can fail too, so it would be nice to have it redundant<br>
  (OpenVPN + gif tunnel to a different *secured* system).

- Now even *Microsoft* (Azure) does __NOT__ recommend having SSH port on the Internet.


We are using *raya* group *(but you may name it whatever you want)* for allowing users to log in.<br>
Remember that for host systems you need at least 2 users in that group.<br>
Best add one user into *recovery* group who does __NOT__ use a shell from ports.