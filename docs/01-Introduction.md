# Introduction – TP Haute Disponibilité Nginx

Dans un environnement informatique professionnel, la disponibilité des services
est un enjeu critique. Une panne matérielle ou logicielle peut entraîner
une interruption de service impactant les utilisateurs.

Ce TP a pour objectif de mettre en place une architecture **hautement disponible**
(High Availability) pour un service web Nginx à l’aide de **Keepalived** et du
protocole **VRRP**.

L’architecture repose sur deux serveurs Linux partageant une **IP virtuelle (VIP)**,
permettant d’éliminer le point de défaillance unique (SPOF).

---v.2---
# Introduction

Ce TP vise à démontrer la mise en œuvre d’une architecture hautement disponible
pour un service web Nginx à l’aide de Keepalived et du protocole VRRP.