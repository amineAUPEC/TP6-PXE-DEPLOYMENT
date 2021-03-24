#!/bin/bash
# Carte réseau 'côté internet' (celle en Accès par pont)
INTERNET_IF="eth0"
iptables -t nat -F
iptables -t nat -A POSTROUTING -o $INTERNET_IF -j MASQUERADE