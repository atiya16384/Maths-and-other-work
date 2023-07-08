load(file = "PROJ.Rdata")
mydata = PROJ[257,]

#number of data points
n=40
n
#calculate the sample mean
mx=mean(PROJ[257,])
mx
#calculate the sample standard deviation
sampleSD=sd(PROJ[257,])
sampleSD
#plot histogram of data against normal distribution
histogram=hist(PROJ[257,], prob= TRUE)
lines(density(PROJ[257,]))
#plot Q-Q plot of data against the normal distribution
QQPlot=qqnorm(PROJ[257,]);abline(mx,sampleSD)
QQPlot
#Calculate the standard error of the mean
se=(sampleSD)/sqrt(n)
se
#calculate a 95% confidence interval
zstar1=qnorm(0.975)
zstar1
CI1=c(mx-zstar1*se, mx+zstar1*se)
CI1
#calculate z-star value for 99% confidence interval
zstar2=qnorm(0.995)
zstar2
#calculate the 99& confidence interval
CI2=c(mx-zstar2*se,mx+zstar2*se)
CI2
#Setting up hypothesis test
n=40
se
mx
mu=0
mu
#calculate the z score 
z=(mx-mu)/se
z
#calculate the p-value
pValue=2*pnorm(z)
pValue



  