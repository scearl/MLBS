library(vegan)
library(Rmisc)
library(reshape2)

#Pitfall Order CA
pitfall.order <- read.csv("C:/Users/Sam/OneDrive/Documents/MLBS 2016/order.pitfall.csv")
str(pitfall.order)

# Coorespondance Analysis
CA1 <- cca(pitfall.order)
str(CA1)

#plot sites only with colored points
p <- plot(CA1, type = 'p', display = "sites", main = "Pitfall Traps by Order")

  #Hedwig
  points(p, "sites", pch = 16, col = "red", cex = 1.5, 1:3)
  #Maple
  points(p, "sites", pch = 16, col = "blue", cex = 1.5, 4:6)
  #Sedge
  points(p, "sites", pch = 16, col = "green", cex = 1.5, 7:9)

  #Add legend
  legend(x = "bottomleft", 
       legend = c("Hedwig", "Maple", "Sedge"), 
       col = c("red", "blue", "green"), 
       pch = 16)

#Family Pitfall CA
pitfall.family <- read.csv("C:/Users/Sam/OneDrive/Documents/MLBS 2016/family.pitfall.csv")
str(pitfall.family)

# Coorespondance Analysis
CA2 <- cca(pitfall.family)
str(CA2)

#plot sites only with colored points
p2 <- plot(CA2, type = 'p', display = "sites", main = "Pitfall Traps by Family")

  #Hedwig
  points(p2, "sites", pch = 16, col = "red", cex = 1.5, 1:3)
  #Maple
  points(p2, "sites", pch = 16, col = "blue", cex = 1.5,  4:6)
  #Sedge
  points(p2, "sites", pch = 16, col = "green", cex = 1.5, 7:9)

  #Add legend
  legend(x = "bottomleft",  
       legend = c("Hedwig", "Maple", "Sedge"), 
       col = c("red", "blue", "green"), 
       pch = 16)
  
