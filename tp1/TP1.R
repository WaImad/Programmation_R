
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
  if (prelevement > 1 || prelevement < 0 )
  {
    print("ERROR : rate and time must be in range(0,100)")}
  if(temps > 1 || temps < 0)
  {
    print("ERROR : rate and time must be in range(0,100)")}
  if (statut == "cadre")
  {
  salaire_net = (salaire* (1-0.25))
  salaire_net_ap <- (salaire* (1-0.25))* (1-prelevement) * temps}
  if (statut =="non-cadre")
  {
    salaire_net = (salaire* (1-0.22))
  salaire_net_ap <-(salaire* (1-0.22))* (1-prelevement) * temps}
  liste = list(salaire_net, salaire_net_ap)
  return(liste) }

brutToNet3(3000, "cadre")
