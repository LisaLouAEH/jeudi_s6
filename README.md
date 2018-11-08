# Trader Space #  
  
------------------------------------------------------------  
  
Ce travail a été réalisé en peer-programming @vano et @LisaLou  
  
------------------------------------------------------------  
## Comment utiliser ce repo :  
* ```cloner ce repo sur le terminal```  
* ```bundle install ``` 
* ```lancer le server et consulter en localhost (on a pas réussi à le push sur heroku) ``` 
  
### Step by Step, notre procédure:  
  
*1/* génération d'une BDD  
  
*2/* genération d'un controller 'user' methode: index, new, show  
  
*3/* génération d'un model 'Crypto'  
  * Qui a généré une table cryptos (:name, :currency).  
  
*4/* test en console la BDD en sauvegardant deux crypto test  
  
*5/* test la commande pour retrouver une crypto par son name  
-----> Crypto.all.find_by(name: "tost").name  
* OK!  
    
*6/* créa d'un dossier 'services' dans app/  
  
*7/* crea d'un fichier scrapper.rb  
-----> créa class Scrapper  
* Code scrapper   
  * return un Hash (key: name, value: valeur)  
  * commentaires sur chaque étape  
  * methode pour parser a partir d'un fichier json non utile mais fonctionnel quand meme.  
  * tester le scrapper => StartScrap.new.perform ---> OK!  
  
*8/* lier le scrapper a la BDD pour qu'il enregistre en base chaque nom et chaque valeur  
  * via la methode save de StartScrap  
  * test avec => StartScrap.new.perform  --> OK!  
  * test la bdd => Crypto.count -> 2087 entries -->OK!  
  * test de retrouver par name => Crypto.find_by(name: "MaidSafeCoin") -->ok  
  
*9/* lier le scrapper au controller via la méthode index pour afficher sur la page d'acceuil tout les crypto.  
* créa d'un model user et sa table users -> :crypto_user (string)  
* créa des methodes (index, new, create, show)  
* appel service StartScrap dans index  
  *X!* RESTE A TROUVER COMMENT RESET LA DB !!! 
  * fake 'update' = si BDD != nil delete tout et scrapp de nouveau :s 
  * test dans la view index OK!  
  * test de creer en console une entrée -> User.create(cypto_user: "bitcoin") --> OK!  
  
*10/* Créer les routes  
  * lien index OK!  
  * lien new avec form  
  * lien show retour de la valeur.  
  
*11/* inserer un formulaire pour soummettre un nom de crypto  
  * inséré dans le show, verif les liaison avec le show ok  
  * afficher le nom de crypto saisie par l'utilisateur et sa valeur dans show  
  * !!!! bug rencontré a cette étape : on découvre qu'on ne peux pas réutiliser  la valeur d'une var globale dans une autre view que celle ou elle est instenciée.  
  
*12/* afficher tout les noms de crypto sur la page d'index  
  * testé OK  
  * retiré parceque c'est moche et inutil  
*13/* installer un systeme de dropdown  
  * afficher toute les crypto ok  
  * grosse galere de route rencontrée a partir du formulaire (a retravailler...)  
  * dropdown --> OK!  
  * affiche le bon resultat dans la view show.html  
*14/* rendre le site jolie ?  