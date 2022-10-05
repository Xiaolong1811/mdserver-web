[Unit]
Description=Gitea (Git with a cup of tea)
After=syslog.target
After=network.target

[Service]
RestartSec=2s
Type=simple
User=root
Group=root
WorkingDirectory=/var/lib/gitea/
ExecStart={$SERVER_PATH}/gitea/gitea web
Restart=always
Environment=USER=root HOME=/home/root GITEA_WORK_DIR=/var/lib/gitea
RemainAfterExit=yes
AmbientCapabilities=CAP_NET_BIND_SERVICE
CapabilityBoundingSet=CAP_NET_BIND_SERVICE

[Install]
WantedBy=multi-user.target
