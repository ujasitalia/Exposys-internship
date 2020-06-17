# library(readr)

#loading data
# if(!any(names(df)) == "custData"){
#     custData <- read_csv("Mall_Customers.csv")
# }

#calculating the optimal number of clusters using different methods
# library(factoextra)
# library(NbClust)
# library(ggplot2)
# 
# custData <- as.data.frame(unclass(custData))
# custDataClean = na.omit(custData)
# custDataClean$Gender <- as.numeric(custDataClean$Gender)
# scaledData <- as.matrix(scale(custDataClean))

#set.seed(123)
# png("elbowmethod.png")
# elbow <- fviz_nbclust(scaledData[,3:5], kmeans, method = "wss", k.max = 10) +
#     geom_vline(xintercept = 4, linetype = 2)+ theme_minimal() +
#     labs(subtitle = "Elbow method")
# print(elbow)
# dev.off()
# 
# 
# # Silhouette method
# png("silhouettemethod.png")
# g <- fviz_nbclust(scaledData[,3:5], kmeans, method = "silhouette", k.max = 10)+
#     theme_minimal() + ggtitle("Silhouette method")
# print(g)
# dev.off()

# Gap statistic
# nboot = 50 to keep the function speedy.
# recommended value: nboot= 500 for your analysis.
# Use verbose = FALSE to hide computing progression.
# set.seed(123)
# png("gapstatisticalmethod.png")
# gap <- fviz_nbclust(scaledData[,3:5], kmeans, nstart = 25,  method = "gap_stat", nboot = 50)+
#     labs(subtitle = "Gap statistic method")
# print(gap)
# dev.off()





#k-means algorithm 
set.seed(1234)
library(animation)
k <- kmeans.ani(as.data.frame(scaledData[,4:5]), 3)
print(k)
# clust <-kmeans(scaledData[,3:5],6,iter.max=100,nstart=50,algorithm="Lloyd")

#relation between spending score and annual income 
# set.seed(1)
# g <- ggplot(as.data.frame(scaledData), aes(x =`Annual.Income..k..`, y = `Spending.Score..1.100.`)) +
#     geom_point(stat = "identity", aes(color = as.factor(clust$cluster))) +
#     scale_color_discrete(name = "Clusters", labels=c("Cluster 1", "Cluster 2", "Cluster 3", "Cluster 4", "Cluster 5","Cluster 6"))+
#     ggtitle("Clusters formed based on Spending Score and Annual Income")
# print(g)
# 
# #relation between spending score and age
# set.seed(123)
# p <- ggplot(as.data.frame(scaledData), aes(x = `Spending.Score..1.100.`, y = `Age`)) +
#     geom_point(stat = "identity", aes(color = as.factor(clust$cluster))) +
#     scale_color_discrete(name="Clusters", labels=c("Cluster 1", "Cluster 2", "Cluster 3", "Cluster 4", "Cluster 5","Cluster 6")) +
#     ggtitle("Clusters formed based on Spending Score and Age")
# print(p)

# library(cluster)
# library(fpc)
# c <- clusplot(as.data.frame(scaledData), clust$cluster, color=TRUE, shade=TRUE,
#          labels=5, lines=0, main = "Cluster Plot against 1st 2 principal components
# ", xlab = "", ylab = "")
# 
# print(c)









