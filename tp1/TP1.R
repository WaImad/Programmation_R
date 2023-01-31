
brutToNet1<-function(salaire, taux = 0.22)
{
  if (is.numeric(salaire) == TRUE ){
    salaire = salaire * (1- taux)
    return (salaire)
  }  else {
    print("ERROR : type not expected")}
  }


brutToNet1(3000)


brutToNet2 <- function(salaire, contrat)
{
  if (contrat == "cadre")
    {
      taux = 0.25
      salaire = (salaire * (1-taux))  * (1-0.075)
      return(salaire)
      }
  if (contrat=="non-cadre")
    {
      taux=0.22
      salaire = (salaire*(1-taux)) * (1-0.075)
      return(salaire)
    } else {
            print("ERROR : contract unknown")
            }
} 

brutToNet2(1500,"non-cadre")

brutToNet3<- function(salaire, statut, prelevement=0.075, temps = 1)
  {
    if (prelevement > 0 | prelevement < 100 & temps > 0 | temps < 1 )
    {
  salaire_net = brutToNet2(salaire, statut)* temps
  salaire_av_ap = list
  } else {
    print("ERROR : rate and time must be in range(0%,100%)") } 
}

brutToNet3(3000,"cadre")