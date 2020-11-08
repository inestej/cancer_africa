
hdi <- c(0.682, 0.494, 0.543, 0.546, 0.641)
names(hdi) <- c("Northern", "West", "Central", "East", "Southern")
summary(hdi)
prostate <- c(43.93939, 58.30721, 63.23120, 61.92469, 41.80967)
breast <- c(37.62781, 47.72118, 56.63082, 51.50502, 33.76623)
cervical <- c(70.83333, 77.70270, 78.73134, 74.81297, 46.40371)
region <- c("Northern", "West", "Central", "East", "Southern")
#df <- data.frame(hdi, prostate, breast, cervical, region)
hdi <- rep(c(0.682, 0.494, 0.543, 0.546, 0.641), c(3,3,3,3,3))
region <- rep(c("Northern", "West", "Central", "East", "Southern"), c(3,3,3,3,3))
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

#method = "lm", color = "chocolate", span = 0.9, se=TRUE, fullrange=TRUE

s <- ggplot(df, aes(x=HDI, y=FR, shape=Cancer, color=Region))
s <- s + geom_point() #+ geom_label(colour="darkred", fontface = "bold", label=rownames(df))
s <- s + stat_smooth(formula=y~x, method="lm", level = 0.25, 
                     color="darkgreen", fill="darkgreen", span=0.9, se=TRUE, fullrange=TRUE)
s <- s + annotate("text",colour='chocolate', x=0.62, y=75, label= paste("P-value=",pv4,"\n","rSquared=",rSquared4))+
  labs(title = "HDI versus Cancer (Breast, Prostate\n and Cervical) Fatality Rate in Africa",
       caption = "Data source: Globocan 2018 and UNESCO")+
  xlab("Human Developpement Index 2018") + ylab("Cancer Fatality Rate per Africa region")
s + geom_vline(xintercept = 0.56, linetype="dotted", 
               color = "blue", size=0.5)+
  annotate("text",colour='blue', x=0.52, y=24, label="Low HDI")+
  annotate("text",colour='blue', x=0.61, y=24, label="Medium HDI")
ggsave("hdi.png")

s <- ggplot(df, aes(x=HDI, y=FR), shape=Cancer)
s <- s + geom_point(aes(color=Cancer)) 
s <- s + stat_smooth(method="lm", level = 0.25, color="darkred", fill="blue", se=TRUE, fullrange=TRUE) 
s <- s + annotate("text",colour='chocolate', x=0.62, y=75, 
                  label= paste("P-value=", pv4,"\n", "rSquared=", rSquared4)) +
  labs(title="HDI versus Cancer (Breast, Prostate\n and Cervical) Fatality Rate in Africa",
       caption="Data source: Globocan 2018 and UNESCO")+
  xlab("Human Developpement Index 2018") + ylab("Cancer Fatality Rate per Africa region")
s + geom_vline(xintercept = 0.56, linetype="dotted", 
               color = "blue", size=0.5)+
  annotate("text",colour='blue', x=0.52, y=24, label="Low HDI")+
  annotate("text",colour='blue', x=0.61, y=24, label="Medium HDI")
ggsave("hdi1.png")

s <- ggplot(df, aes(x=HDI, y=FR, color=Region))
s <- s + geom_point(aes(shape=Cancer)) 
s <- s + stat_smooth(method = "lm", color = "chocolate", span = 0.9, se=TRUE, fullrange=TRUE) 
s <- s + annotate("text",colour='chocolate', x=0.62, y=65, label= paste("P-value=",pv4,"\n","rSquared=",rSquared4))+
  labs(title = "HDI versus Cancer Fatality Rate\n of Cervical and Prostate in Africa",
       caption = "Data source: Globocan 2018 and UNESCO")+
  xlab("Human Developpement Index 2018") + ylab("Cancer Fatality Rate per Africa region")
s + geom_vline(xintercept = 0.56, linetype="dotted", color = "blue", size=0.5)+
  annotate("text",colour='blue', x=0.52, y=24, label="Low HDI")+
  annotate("text",colour='blue', x=0.61, y=24, label="Medium HDI")
ggsave("hdi2.png")

