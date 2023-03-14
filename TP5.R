#Exercice 1 
#a)
df <- read.csv("NBA.csv")

#b)
nrow(df)
ncol(df)

#c)
summary(df)

#d)
as.factor(df$PERIOD)
as.factor(df$PTS_TYPE)
summary(df)
  
#Ex0 2 
#a)
quantile(df$CLOSE_DEF_DIST,seq(0,1,0.1))

#b

nb <- unique(df$GAME_ID)
length(nb)

#c)

length(unique(df$SHOOTER))
 #d)

df$shot_dist_metre <- df$SHOT_DIST*3.281


#Exo3
#a)
t <- table(df$PERIOD)

barplot(t)

#b)
d <- table(df$SHOT_RESULT)
pie((d), labels = paste(df$SHOT_RESULT ," ",prop.table(d)*100))

#c)

hist(df$shot_dist_metre,probability = TRUE)

#d)

l <- prop.table(table(df$PTS_TYPE,df$PERIOD))

barplot(l,main = "Repartition du type de points par période",legend.text = rownames(l),beside = TRUE)

#e)
boxplot(df$SHOT_DIST)

#f)
m <- table(df$PERIOD ~ df$SHOT_DIST)
boxplot(df$SHOT_DIST ~ df$PERIOD, main = "distribution de la distance de tirs en fonction des périodes", ylab = "Distance", xlab = "Période")

#Exo 5
#a)

top_dist <- aggregate(df$SHOT_DIST ~ df$SHOOTER, data = df , FUN = sum)
rang_1 <- order(top_dist[,2], decreasing = TRUE)
 requete_a <- top_dist[rang_1,]
head(requete_a,10)

 #b)
top_pts <- aggregate(df$PTS_TYPE ~ df$SHOOTER, data = df , FUN = sum)
rang_2 <- order(top_pts[,2], decreasing = TRUE)
requete_b <- top_pts[rang_2,]
head(requete_b,5)

#c)

top_period <- aggregate(df$PTS_TYPE  ~  df$PERIOD, data = df , FUN = sum)
top_period
rang_3 <- order(top_period[,2], decreasing = TRUE)
requete_c <- top_period[rang_3,]
requete_c
