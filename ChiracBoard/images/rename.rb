# coding: utf-8
names = ["Abracadabra",
"Allo",
"Banalisation",
"Bonjour",
"Bovins",
"Bruit et odeur",
"Bûches",
"Ca rate",
"Chlorophorme",
"Cidre",
"Clarification",
"Colère",
"Coloriage",
"Compatriotes",
"Coupe de France",
"Concorde",
"Content",
"Dans les yeux",
"Dissolution",
"Droits de l'homme",
"Execution",
"France 2",
"Fureur",
"Inadmissible",
"Je tiens",
"Je veux",
"Lapin",
"Loin mais beau",
"Maison",
"Plaçou",
"Politique",
"Pomme",
"Pommes",
"Président",
"Pschit",
"Publicité",
"Reflexion",
"Rien vu",
"Roquet",
"Sale gueule",
"Servir",
"Terrorisme",
"Traque",
"Vive la France",
"Bonus 1",
"Bonus 2"]

Dir["./*.{png,gif,jpg}"].each_with_index do |img, index|
  img = img.split('./').last
  extension = img.split('.').last

  puts "mv #{img} #{names[index].gsub(' ', '\ ').gsub("'", "\'")}.png"
  `mv #{img} #{index}.#{extension}`
end