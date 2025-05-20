# Applications et concurrence multi-utilisateurs

## Objectifs opérationnels

Voici un lien vers l'[IM/CO de ce module 223](res/223_IM_CO.pdf).

## Présentation

Voici un lien vers [la présentation Powerpoint qui vous a été faite au démarrage du module](presentation/223-Introduction-au-verrouillage.pdf).

## Démonstrations et expérimentations

1) Commencez par **démarrer la configuration Docker** à l'aide du [docker-compose.yml](docker-compose.yml) de ce projet.
2) **Chargez ensuite les données dans la BD** à l'aide de ce fichier [223-demo-verrouillage.sql](db_data/223-demo-verrouillage.sql) via l'interface [phpmyadmin](http://localhost:8080).

**Base de données - Personnes**

- [Verrouiller 1 enregistrement](README_Demo_01_Personnes.md#scénario-1) (une personne spécifique) et montrer qu'un autre usager sera mis en attente
- [Verrouiller 2 enregistrements](README_Demo_01_Personnes.md#scénario-2) (par exemple source et destination IBAN) et montrer qu'un autre usager sera mis en attente (de l'un et/ou de l'autre)

**Base de données - Bus Company**

- Verrouillage et [gestion du dépassement de capacité d'un véhicule de transport](README_Demo_02_BusCompany.md)

---

<img src="res/EMF_logo_RVB_Info_long.png" width="25%" style="margin-left:-20px;">
