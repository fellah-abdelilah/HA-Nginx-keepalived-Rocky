# Cluster HA Nginx avec Keepalived (Rocky Linux)

## 🎯 Objectif

Mettre en place une architecture **hautement disponible (High Availability)** pour un service web **Nginx**, basée sur :

- 2 serveurs Rocky Linux
- 1 IP virtuelle (VIP)
- Keepalived + VRRP
- Basculement automatique en cas de panne

🎯 **Résultat attendu**  
Si le serveur principal tombe (ou si Nginx s’arrête), le serveur secondaire prend automatiquement le relais **sans changer l’IP côté client**.

---

## 🏗️ Architecture

| Élément | Rôle |
|------|------|
| srv1 | Serveur principal (MASTER) |
| srv2 | Serveur secondaire (BACKUP) |
| VIP | 192.168.150.200 |
| Keepalived | Gestion du basculement |
| VRRP | Protocole de redondance |

📌 Interface réseau : `ens33`

---

## 🖥️ Environnement

| Serveur | IP |
|------|------|
| srv1 | 192.168.150.131 |
| srv2 | 192.168.150.133 |
| VIP | 192.168.150.200 |

OS : **Rocky Linux Minimal**  
Accès : utilisateur `sudo`

---

## ⚙️ Technologies utilisées

- Nginx
- Keepalived
- VRRP
- Rocky Linux
- FirewallD

---

## 📁 Contenu du dépôt

- `keepalived/` → Fichiers de configuration Keepalived
- `nginx/` → Pages web spécifiques par serveur
- `scripts/` → Scripts de test HA
- `docs/` → Documentation détaillée
- `architecture/` → Schéma d’architecture

---

## 🚀 Tests de haute disponibilité

```bash
curl 192.168.150.200
```

## Simulation de panne :

```
chmod +x ./scripts/test-failover.sh
```
