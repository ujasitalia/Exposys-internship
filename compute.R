#loading libraries
library(readr)
library(ggplot2)


# # loading data
# if(!any(names(df)) == "custData"){
#     custData <- read_csv("Mall_Customers.csv")
# }

#gender wise spending score
# png("spending score gender wise.png")
# g <- ggplot(custData, aes(x=custData$Gender, y=custData$`Spending Score (1-100)`, fill = custData$Gender))
# g <- g + geom_bar(stat = "identity", width = 0.5)+labs(x = "Gender", y = "Spending Score", title = "Spending Score gender wise")
# g <- g + theme_light() + theme(legend.position = "none")
# print(g)
# dev.off()



#age density
# png("Age density.png")
# p <- ggplot(custData, aes(Age)) +
#     geom_histogram(aes(y=..density..), alpha = 0.7, fill = "#333333") +
#     geom_density(fill = "#ff4d4d", alpha = 0.5) +
#     theme(panel.background = element_rect(fill = '#ffffff')) +
#     geom_vline(aes(xintercept=mean(Age)), linetype="dashed", size=1) +
#     ggtitle("Age Density")
# print(p)
# dev.off()


#annual income
# png("Annual Income.png")
# h <- ggplot(custData, aes(`Annual Income (k$)`)) +
#     geom_histogram(aes(y = ..density..), binwidth = 10, alpha = 0.7, fill = "#333333")+ geom_density(fill = "#ff4d4d", alpha = 0.5)+
#     theme(panel.background = element_rect(fill = '#ffffff')) +
#     ggtitle("Annual income")
# print(h)
# dev.off()


#annual income summary
# png("Annual Income Summary.png")
# h <- ggplot(custData, aes(`Annual Income (k$)`)) + geom_boxplot()
# h <- h + coord_flip() + theme_dark() + ggtitle("Annual Income Summary")
# print(h)
# dev.off()



















