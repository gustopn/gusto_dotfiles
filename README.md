# gusto_dotfiles

my users dotfiles + some other useful server config files

## sshd_config

do not forget to set the permissions for `sshd_config.local` to read-write for root only when installed.

```
chown 0:0 /etc/ssh/sshd_config*
chmod 0640 /etc/ssh/sshd_config*
```

