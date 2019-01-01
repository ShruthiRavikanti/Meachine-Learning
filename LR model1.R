
#Linear Regression

advertisement<-read.csv("advertising.csv")

#Examine the data
View(advertisement)

# Check the structure of "advertisement"
str(advertisement)

#Build the linear model 
model_1 <- lm(Sales~.,data=advertisement)

#summary of  model_1
summary(model_1)

news_model <- lm(Sales~Newspaper, advertisement)

# Check the summary of both the models
summary(news_model)
summary(model_1)

# p-value is significant for single variable newspaper.

# Look at the correlations between the independent variables.
corrs = cor(advertisement[, -4])
View(round(corrs, 2))

# Correlation between Radio and Newspapers is strong, this shows that in the presence of Radio, Newspaper variable is not significant

# Remove the Newspaper variable, as it was insignificant in the multiple variable model
# Store the new linear model having TV and Radio marketing as the two significant variables into the object "model_2" .
model_2 <- lm(Sales~.-Newspaper,data=advertisement)


summary(model_2)

# Sales = 2.92 + 0.045*TV + 0.187*Radio


