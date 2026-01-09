# Rapport de TP – Haute Disponibilité Nginx

## 1. Introduction
Dans un contexte de production, la disponibilité des services est un enjeu majeur.
Un serveur unique constitue un point de défaillance critique.

## 2. Problématique
Comment garantir l’accès continu à un service web en cas de panne matérielle ou logicielle ?

## 3. Solution proposée
La solution repose sur :
- Une IP virtuelle
- Le protocole VRRP
- Keepalived pour la gestion du basculement

## 4. Mise en œuvre
Deux serveurs Rocky Linux ont été configurés :
- srv1 : MASTER
- srv2 : BACKUP

Le service Nginx est supervisé par Keepalived.

## 5. Tests réalisés
- Test nominal
- Arrêt du service Nginx
- Vérification du basculement automatique

## 6. Résultats
Les tests démontrent une continuité de service sans interruption côté client.

## 7. Conclusion
Ce TP met en évidence l’efficacité des mécanismes de haute disponibilité
et permet de comprendre les bases des architectures tolérantes aux pannes.
