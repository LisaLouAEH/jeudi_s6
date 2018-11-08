# README
1/ génération d'une BDD  

2/ genération d'un controller 'user' methode: index, new, show  
  
3/ génération d'un model 'Crypto'  
    L Qui a généré une table cryptos (:name, :currency)  

4/ test en console la BDD en sauvegardant deux crypto test  
  
5/ test la commande pour retrouver une crypto par son name  
    -----> Crypto.all.find_by(name: "tost").name  
    L OK!  
  
6/ créa d'un dossier 'services' dans app/  
  
7/ crea d'un fichier scrapper.rb  
    -----> créa class Scrapper  
            L Code scrapper   
                L return un Hash (key: name, value: valeur)  
                L commentaires sur chaque étape  
                L methode pour parser a partir d'un fichier json non utile mais fonctionnel quand meme.  
                L tester le scrapper => StartScrap.new.perform ---> OK!  

8/ lier le scrapper a la BDD pour qu'il enregistre en base chaque nom et chaque valeur  
                L via la methode save de StartScrap  
                L test avec => StartScrap.new.perform  --> OK!  
                L test la bdd => Crypto.count -> 2087 entries -->OK!  
                L test de retrouver par name => Crypto.find_by(name: "MaidSafeCoin") -->ok  
  
9/ lier le scrapper au controller via la méthode index pour afficher sur la page d'acceuil tout les crypto.  
        L créa d'un model user et sa table users -> :crypto_user (string)  
        L créa des methodes (index, new, create, show)  
            L appel service StartScrap dans index  
            X! RESTE A TROUVER COMMENT RESET LA DB !!!  
            L test dans la view index OK!  
        L test de creer en console une entrée -> User.create(cypto_user: "bitcoin") --> OK!  
  
10/ Créer les routes  
        L lien index OK!  
        L lien new avec form  
        L lien show retour de la valeur.  

11/ inserer un formulaire pour soummettre un nom de crypto  
        L inséré dans le show, verif les liaison avec le show ok
        L afficher le nom de crypto saisie par l'utilisateur et sa valeur dans show  
        L !!!! bug rencontré a cette étape : on découvre qu'on ne peux pas réutiliser  la valeur d'un var globale dans une autre view que celle ou elle est instenciée.
12/ afficher tout les noms de crypto sur la page d'index
        L testé OK
        L retiré parceque c'est moche et inutil
13/ installer un systeme de dropdown
        L afficher toute les crypto ok
        L grosse galere de route rencontrée a partir du formulaire (a retravailler...)