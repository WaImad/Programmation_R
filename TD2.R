install.packages("questionr")
library(questionr)
data(hdv2003)

hdv2003$id
hdv2003[4,5]

hdv2003$nom_colonne
hdv2003$age

View(hdv2003)
head(hdv2003)
head(hdv2003$age)
head(hdv2003[,4])
head(hdv2003[,1:4])
head(hdv2003,3)

nrow(hdv2003)
ncol(hdv2003)
colnames(hdv2003)
str(hdv2003)

dim(hdv2003)
hdv2003$sexe

tail(hdv2003)

hdv2003$minutes.tv <-hdv2003$heures.tv*60 # AJout d'une colonne
View(hdv2003)

hdv2003$heures.tv <- 20 #OHHH MINCE
hdv2003$heures.tv <-hdv2003$minutes.tv/60

hdv2003<- hdv2003[,-21] #Suppression d'un colonne.
hdv2003$minutes.tv

min(hdv2003$age)
max(hdv2003$age)
range(hdv2003$age)
mean(hdv2003$age)
mean(hdv2003$heures.tv, na.rm=T) #calculer la moyenne en enlevant les valeur NULL
sum(is.na(hdv2003$heures.tv))
