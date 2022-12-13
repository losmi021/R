Admission <- read.csv("Admission.csv")

fit1<- lm(Chance.of.Admit~CGPA+TOEFL.Score+GRE.Score, Admission)
fit1

sum.fit1 <- summary(fit1)

## summary of model and pull metrics from it
sum.fit1 <- summary(fit1)
sum.fit1$coefficients
sum.fit1$sigma ## residual standard error
#MSE
sum.fit1$sigma^2
# or by definition
sum(sum.fit1$residuals^2)/fit1$df

# R^2 and adj. R^2
sum.fit1$r.squared
sum.fit1$adj.r.squared

sum(resid(fit1)^2)

plot(fit1)

fit2<- lm(Chance.of.Admit~CGPA+TOEFL.Score+GRE.Score+LOR+SOP+University.Rating+Research, Admission)
fit2

sum.fit2 <- summary(fit2)

summary(fit1)

sum(resid(fit2)^2)


sum.fit2$sigma^2

sum.fit2$adj.r.squared


sum.fit2$adj.r.squared
sum.fit1$adj.r.squared

sum.fit2$sigma^2
sum.fit1$sigma^2
