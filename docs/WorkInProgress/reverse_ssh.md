## Restricted host machine 

```
 ssh-keygen -t rsa

 ssh-copy-id user@middleman

 ssh user@middleman # check where login works password free

```

## Run autossh tunnel 
```
autossh -M 10984 -o "PubkeyAuthentication=yes" -o "PasswordAuthentication=no"  -R 20000:localhost:22 user@middleman
```

* 20000 is the port on middleman where the traffic is forwarded from Restricted host  


## create a service for boot

Create a service ```/lib/systemd/system/autossh-tunnel.service```
```
sudo nano  /lib/systemd/system/autossh-tunnel.service
```

```
[Unit]
Description=AutoSSH tunnel ssh service everything
After=network.target

[Service]

#Environment="AUTOSSH_GATETIME=0"
ExecStart=/usr/bin/autossh -M 10985 -N -o "PubkeyAuthentication=yes" -o "PasswordAuthentication=no" -i /home/joe/.ssh/id_rsa -R 20000:localhost:22 joe@12.34.56.90

# make sure that same user as the ssh user@middleman to access ~/ssh/authorized_keys
User=joe

# Group=joe
Restart=always
RestartSec=10
# KillMode=mixed

[Install]
WantedBy=multi-user.target
```

Enable the service and Run 
```
sudo systemctl daemon-reload
sudo systemctl enable autossh-tunnel.service
sudo service autossh-tunnel restart
```

```
sudo service autossh-tunnel status # check the status of the service 

    ● autossh-tunnel.service - AutoSSH tunnel ssh service everything
    Loaded: loaded (/lib/systemd/system/autossh-tunnel.service; enabled; vendor preset: enabled)
    Active: active (running) since Wed 2019-09-04 16:51:16 PDT; 25min ago
    Main PID: 1039 (autossh)
        Tasks: 2
    Memory: 1.5M
        CPU: 58ms
    CGroup: /system.slice/autossh-tunnel.service
            ├─1039 /usr/lib/autossh/autossh -M 10985 -N -o PubkeyAuthentication=yes -o PasswordAuthentication=no -i /home/joe/.ssh/id_rsa -R 20000:localhost:22 joe@12.34.56.90
            └─1053 /usr/bin/ssh -L 10985:127.0.0.1:10985 -R 10985:127.0.0.1:10986 -N -o PubkeyAuthentication=yes -o PasswordAuthentication=no -i /home/joe/.ssh/id_rsa -R 20000:local

    Sep 04 16:51:16 nyx systemd[1]: Started AutoSSH tunnel ssh service everything.
    Sep 04 16:51:16 nyx autossh[1039]: starting ssh (count 1)
    Sep 04 16:51:16 nyx autossh[1039]: ssh child pid is 1053
```
