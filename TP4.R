#Ex 1
#1)
population <-rnorm(n=10000000, mean = 171, sd = 9)
#2)
mean(population)
sd(population)

#3)
hist(population)

#4)
sum(population>=190)

(1-pnorm(190,mean = 171, sd=9))*10000000

#5)
sum(population<= 144)

pnorm(144,171,9)*10000000

#Ex2
#1)
tirage<-sample(population,size=100)
tirage

mean(tirage)
sd(tirage)

#2)
qnorm(0,975)
mean(tirage)-qnorm(0.975)*sd(tirage)/sqrt(100)
mean(tirage)+qnorm(0.975)*sd(tirage)/sqrt(100)

#3)
df <-replicate(1000,sample(population,size=100))
data$mean <- apply(df,2,mean)
data$sd <- apply(df,2,sd)
#4)
hist(apply(df,2,mean))

#5)
mean(data$mean)
sd(data$mean)

#6)
sum(data$mean > 172.8)
(1-pnorm(172.8,mean(data$mean),sd(data$mean)))*1000

#Ex3
moyenne_echantillon<-function(V,n)
{
moyenne_echantillon<- mean(sample(V,n))
}

moyennes_20 <- replicate(1000,moyenne_echantillon(population,20))
moyennes_30 <- replicate(1000,moyenne_echantillon(population,30))
moyennes_50 <- replicate(1000,moyenne_echantillon(population,50))
moyennes_100 <- replicate(1000,moyenne_echantillon(population,100))
moyennes_500 <- replicate(1000,moyenne_echantillon(population,500))

hist(moyennes_20,xlim=c(161,181))
hist(moyennes_30,xlim=c(161,181))
hist(moyennes_50,xlim=c(161,181))
hist(moyennes_100,xlim=c(161,181))
hist(moyennes_500,xlim=c(161,181))


