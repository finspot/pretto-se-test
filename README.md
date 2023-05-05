___
# Test technique Software Engineer - Team Pretto
## Objectif
L'objectif de ce test technique est d'évaluer :
- tes compétences en programmation
- ta créativité en architecture de SI.
- ta capacité à argumenter tes choix d'architecture

## Contexte
Tu interviens au sein de la team "Pretto", dont le but est de développer les outils et apps à destination des clients et salariés de Pretto.
Ta mission est d'exposer à l'équipe front end, en charge de l'app, la donnée venant de Finspot afin d'afficher la page de résultat de notre simulateur ([Figma de la page de résultat](https://drive.google.com/file/d/1tIsySY6wWuIdNx4OQYWu3hsrZ-tFHj5-/view?usp=sharing)). Pour cela tu as à disposition une [API Pretto](#utilisation-de-lapi-boiler-plate-ce-repo) dans laquelle tu devras implémenter l'/les interface.s afin que l'équipe en charge de l'app puisse requêter la donnée dont elle a besoin et une [API Finspot](#doc-de-lapi-finspot) avec laquelle tu devras communiquer pour recevoir la donnée brute.

## Déroulé
La mission est grande, on le sait, mais il ne s'agit que d'un test. Tu veilleras donc à ne pas passer plus de 3h sur l'exercice 🕑.
Tu porteras une attention particulière au format de la donnée afin de faciliter au maximum le travail de tes collègues côté app.

___
# Ressources
## Utilisation de l'API Pretto - boiler plate (ce repo)

[Pour commencer installe Docker sur ta machine si ce n'est pas déjà fait.](https://docs.docker.com/get-docker/)

Ensuite tu peux lancer l'API en local en exécutant la commande suivante dans ton terminal :

```shell
make
```

et visiter `localhost:3000`


Tu peux également accèder à la console rails avec la commande suivante :

```shell
make console
```
___

## Doc de l'API Finspot
L'API Finspot expose la donnée de finançabilité aux équipes Pretto et Oleen (mandataires indépendants). Dans le cadre de ce test l'API te renverra toujours la même donnée, à toi de l'exploiter/retraiter.

URL : https://europe-west1-pretto-apis.cloudfunctions.net/fake-finspot

METHOD : GET

AUTHORIZATION : Basic auth
  - username : [ton_nom]
  - password : **pretto-se-test**
