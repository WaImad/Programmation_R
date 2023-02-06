# 2.1 Exercice 1 : Importer les données
# a. Importez le jeu de données pokemon.xlsx à l’aide du package readxl.
  
install.packages("readxl")
library(readxl)
setwd("L:/DUT/STID/Promo 2022/ifarsi/R/tp2")
df <- read_excel(path  = "pokemon.xlsx", sheet = "pokemon")

# b. Combien de lignes, colonnes sont présentes dans ce dataset (utilisez les fonctions adaptées) ?

nrow(df)
ncol(df)
dim(df)
str(df)

#   c. Affichez le nom des colonnes.

colnames(df)

# d. Affichez le type des colonnes avec la fonction adaptée.

str(df)

# e. On souhaite analyser les variables generation, is_legendary, et type en tant que variables qualitatives. Modifier le type de ces variables pour les transformer en type factor.

df$is_legendary <- as.factor(df$is_legendary)
df$type <- as.factor(df$type)
df$generation <- as.factor(df$generation)

View(df$is_legendary)

# f. Combien de niveaux (levels) sont présents dans ces variables ?

nlevels(df$type)
nlevels(df$is_legendary)
nlevels(df$generation)

#   g. Affichez un résumé des données avec la fonction adaptée.
 
 summary(df)
 
 # 2.2 Exercice 2 : Statistiques descriptives
 # a. Déterminer la moyenne de la variable weight_kg.
 
mean(df$weight_kg, na.rm = T)
 
 # b. Déterminer la médiane de la variable weight_kg.

median(df$weight_kg, na.rm = T)

 # c. Déterminer les quartiles de la variable height_m.

quantile(df$height_m, na.rm = T)


 # d. Déterminer les déciles de la variable height_m.

quantile(df$height_m,seq(0, 1, 0.1 ),na.rm = T)

 # e. Déterminer la variance et l’écart-type de la variable weight_kg.

var(df$weight_kg, na.rm = T)
sd(df$weight_kg, na.rm = T)

 # f. Déterminer un tri à plat pour compter les effectifs des modalités de chaque variable factor en triant chaque sortie par ordre décroissant.

sort(table(df$is_legendary),decreasing = T)
sort(table(df$type), decreasing = T)
sort(table(df$generation), decreasing = T)

# 2.3 Exercice 3 : Tris et Selections

# a. Sélectionnez la colonne nom et is_legendary.

requete_a <- df[,c("nom","is_legendary")]
dim(requete_a)

# b. Sélectionnez les 50 premières lignes et les deux premières colonnes.

requete_b <- df[1:50,1:2]
dim(requete_b)

# c. Sélectionnez les 10 premières lignes et toutes les colonnes.

requete_c <- df[1:10,]
dim(requete_c)

# d. Sélectionnez toutes les colonnes sauf la dernière.

requete_d <- df[,1:9]
dim(requete_d)

# e. Triez le dataset par ordre alphabétique et afficher le nom du pokemon de la première ligne.

rang <- order( df$nom)
df <- df[rang,]
df
resultat <- df[1,2]


# f. Triez le dataset par weight_kg en ordre décroissant, et afficher le nom du pokemon de la première ligne

rang_1 <- order(df$weight_kg, decreasing = T)
df <- df[rang_1,]
df
resultat_1 <- df[1,2]
resultat_1
# g. Triez le dataset par attack en ordre décroissant puis par speed en ordre croissant, et afficher le nom des pokemons des 10 premières lignes.

rang_2 <- order( - df$attack, df$speed )
df <- df[rang_2,]
df
resultat_2 <- df[1:10,2]
resultat_2