#!/bin/bash

echo "Test initial VIP"
curl -s 192.168.150.200

echo "Arrêt de Nginx..."
sudo systemctl stop nginx
sleep 5

echo "Test après basculement"
curl -s 192.168.150.200