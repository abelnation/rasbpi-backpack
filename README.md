# rasbpi-backpack

## remove crap

```
sudo apt remove libreoffice* wolfram* minecraft-pi sonic-pi scratch nuscratch idle3 smartsim  java-common python-minecraftpi python3-minecraftpi bluej nodered claws-mail claws-mail-i18n python-pygame --purge -y
sudo apt clean && sudo apt autoremove --purge -y
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y
```

## ssh

- sshd_config: /etc/ssh/sshd_config
- disables password login, so you must setup ssh keys before using this config

## Firewall

see:
[security](https://www.raspberrypi.org/documentation/configuration/security.md)

- jail.local: /etc/fail2ban/jail.local

```
ufw allow <portnum>
```

## nginx

```
sudo apt-get install nginx
```

config in: `/etc/nginx/sites-available`

Start on re-boot:

```
sudo systemctl enable nginx
```

## monitoring

```
sudo apt-get install collectd rrdtool php5-common -y
sudo /etc/init.d/collectd stop
sudo mv /etc/collectd/collectd.conf /etc/collectd/collectd.conf_backup
```
