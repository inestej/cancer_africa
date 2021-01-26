hdi <- c(0.682, 0.494, 0.543, 0.546, 0.641)
names(hdi) <- c("Northern", "Western", "Central", "Eastern", "Southern")
summary(hdi)
prostate <- c(43.93939, 58.30721, 63.23120, 61.92469, 41.80967)
breast <- c(37.62781, 47.72118, 56.63082, 51.50502, 33.76623)
cervical <- c(70.83333, 77.70270, 78.73134, 74.81297, 46.40371)
region <- c("Northern", "West", "Central", "East", "Southern")
#df <- data.frame(hdi, prostate, breast, cervical, region)
hdi <- rep(c(0.682, 0.494, 0.543, 0.546, 0.641), c(3,3,3,3,3))
region <- rep(c("Northern", "Western", "Central", "Eastern", "Southern"), c(3,3,3,3,3))
df <- data.frame(region, hdi)
cancer <- c("Breast", "Prostate", "Cervical", "Breast", "Prostate", "Cervical", "Breast", "Prostate", "Cervical", "Breast", "Prostate", "Cervical", "Breast", "Prostate", "Cervical")
df <- cbind(df, cancer)
str(df)
#attach(cancer)
df <- df[order(cancer, decreasing = FALSE),]
df
df <- cbind(df, c(breast, cervical, prostate))

df
colnames(df) <- c("Region", "HDI", "Cancer", "FR")
df


s <- ggplot(df, aes(x=HDI, y=FR, color=Region))
s <- s + geom_point(aes(shape=Cancer), size=2) 
s <- s + stat_smooth(method = "lm", color = "chocolate", span = 0.9, se=TRUE, fullrange=TRUE) 
s <- s + #annotate("text",colour='chocolate', x=0.62, y=65, label= paste("P-value=",pv4,"\n","rSquared=",rSquared4))+
  labs(title = "HDI versus Cancer (Breast, Prostate\n and Cervical) Fatality Rate in Africa",
       caption = "Data source: Globocan 2018 and UNESCO") +
  xlab("Human Developpement Index (2018)") + ylab("FR (%)")
s + geom_vline(xintercept = 0.56, linetype="dotted", color = "blue", size=0.5)+
  annotate("text",colour='blue', x=0.52, y=20, label="Low HDI") +
  annotate("text",colour='blue', x=0.61, y=20, label="Medium HDI") #+
#scale_x_continuous("My x label") +
#scale_y_continuous("My y label") 
ggsave("hdi.png")


hdi <- c(0.682, 0.494, 0.543, 0.546, 0.641)
names(hdi) <- c("Northern", "West", "Central", "East", "Southern")
summary(hdi)
prostate <- c(13.2, 31.9, 35.9, 23.9, 64.1)
breast <- c(48.9, 37.3, 27.9, 29.9, 46.2)
cervical <- c(7.2, 29.6, 26.8, 40.1, 43.1)
region <- c("Northern", "Western", "Central", "Eastern", "Southern")
#df <- data.frame(hdi, prostate, breast, cervical, region)
hdi <- rep(c(0.682, 0.494, 0.543, 0.546, 0.641), c(3,3,3,3,3))
region <- rep(c("Northern", "Western", "Central", "Eastern", "Southern"), c(3,3,3,3,3))
dp <- data.frame(region, hdi)
cancer <- c("Breast", "Prostate", "Cervical", "Breast", "Prostate", "Cervical", "Breast", "Prostate", "Cervical", "Breast", "Prostate", "Cervical", "Breast", "Prostate", "Cervical")
dp <- cbind(dp, cancer)
str(dp)
#attach(cancer)
dp <- dp[order(cancer, decreasing = FALSE),]
dp
dp <- cbind(dp, c(breast, cervical, prostate))

dp
colnames(dp) <- c("Region", "HDI", "Cancer", "IR")
dp

model2 = lm(data=dp, formula=IR~HDI)
res_model2 = anova(model2)
pv3 = round(res_model2$`Pr(>F)`[1],5)
rSquared3 <- round(summary(model2)$r.squared,2)

s <- ggplot(dp, aes(x=HDI, y=IR, color=Region))
s <- s + geom_point(aes(shape=Cancer), size=2) 
s <- s + stat_smooth(method = "lm", color = "chocolate", span = 0.9, se=TRUE, fullrange=TRUE) 
s <- s + #annotate("text",colour='chocolate', x=0.62, y=60, label= paste("P-value=", pv3,"\n","rSquared=", rSquared3)) +
  labs(title = "HDI versus Cancer (Breast, Prostate\n and Cervical) Incidence Rate in Africa",
       caption = "Data source: Globocan 2018 and UNESCO")+
  xlab("Human Developpement Index (2018)") + ylab("IR (per 100 000 inhabitant)")
s + geom_vline(xintercept = 0.56, linetype="dotted", color = "blue", size=0.5)+
  annotate("text",colour='blue', x=0.52, y=17, label="Low HDI")+
  annotate("text",colour='blue', x=0.61, y=17, label="Medium HDI")
ggsave("hdi1.png")


