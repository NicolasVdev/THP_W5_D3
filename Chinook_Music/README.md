# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Questions
Maintenant que ta BDD est prête, tu vas répondre aux questions ci-dessous :

a) Niveau facile

* Quel est le nombre total d'objets Album contenus dans la base (sans regarder les id bien sûr) ?
- reqûete effectuée : Album.all // Album.count
> 347

* Qui est l'auteur de la chanson "White Room" ?
- requête effectuée : Track.find_by(title: "White Room").artist
> Eric Clapton

* Quelle chanson dure exactement 188133 milliseconds ?
- requête effectuée : Track.find_by(duration: 188133).title
> Perfect

* Quel groupe a sorti l'album "Use Your Illusion II" ?
- requête effectuée : Album.find_by(title: "Use Your Illusion II").artist
> Gun N Roses


b) Niveau Moyen

* Combien y a t'il d'albums dont le titre contient "Great" ? (indice)
- reqûete effectuée : Album.where("title like ?", "%Great%").count
> 13

* Supprime tous les albums dont le nom contient "music".
- reqûete effectuée : Album.destroy_by("title like ?", "%music%")
> Suppression de 4 albums

* Combien y a t'il d'albums écrits par AC/DC ?
- reqûete effectuée : Album.where(artist: "AC/DC").count
> 2

* Combien de chanson durent exactement 158589 millisecondes ?
- reqûete effectuée : Track.where(duration: 158589).count
> 0


c) Niveau Difficile
Pour ces questions, tu vas devoir effectuer des boucles dans la console Rails. C'est peu commun mais c'est faisable, tout comme dans IRB.

* puts en console tous les titres de AC/DC.
- reqûete/boucle effectuée : Track.where(artist: "AC/DC").each{|t| puts t.title}
> For Those About To Rock (We Salute You)
  Put The Finger On You
  Lets Get It Up
  Inject The Venom
  Snowballed
  Evil Walks
  C.O.D.
  Breaking The Rules
  Night Of The Long Knives
  Spellbound
  Go Down
  Dog Eat Dog
  Let There Be Rock
  Bad Boy Boogie
  Problem Child
  Overdose
  Hell Aint A Bad Place To Be
  Whole Lotta Rosie

* puts en console tous les titres de l'album "Let There Be Rock".
- reqûete/boucle effectuée : Track.where(album: "Let There Be Rock").each{|t| puts t.title}
> Go Down                                                                   
  Dog Eat Dog                                                               
  Let There Be Rock                                                         
  Bad Boy Boogie                                                            
  Problem Child                                                             
  Overdose                                                                  
  Hell Aint A Bad Place To Be                                               
  Whole Lotta Rosie  

* Calcule le prix total de cet album ainsi que sa durée totale.
- reqûete effectuée : Track.where(album: "Let There Be Rock").sum(:price) // Track.where(album: "Let There Be Rock").sum(:duration)
> prix : 7.920000000000001 
> durée : 2453259 ms

* Calcule le coût de l'intégralité de la discographie de "Deep Purple".
- reqûete effectuée : Track.where(artist: "Deep Purple").sum(:price)
> 90.0899999999999 

* Modifie (via une boucle) tous les titres de "Eric Clapton" afin qu'ils soient affichés avec "Britney Spears" en artist.
- reqûete effectuée : Track.where(artist: "Eric Clapton").update_all(artist: "Britney Spears")
> soit 2 albums et 32 chansons
