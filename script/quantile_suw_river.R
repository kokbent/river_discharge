
library("waterData")
library("reshape")
library("ggplot2")


#station to analyze
station = '02323500'   

#get site name to use in plot titles and such
stinfo  = siteInfo(station)

#read entire time series
dis   = importDVs(staid=station,code='00060',stat='00003', sdate= "1950-01-01") 

dis$Date = as.Date(dis$dates,"%m/%d/%Y")

dis2 = subset(dis, substr(dis$Date,6,10)!='02-29') 

out = matrix(NA,365,5)   # Object to fill with the loop - quantiles for every day of the year
day = unique(paste(substr(dis2$Date[],6,7),substr(dis2$Date[],9,10),sep='-'))  # Unique days of the year
o=order(day,decreasing = FALSE)				# index for reordering day 
days=day[o]                           # order days  

length(days)   # Check 

for(i in 1:length(days)){
  ind = which(substr(dis2$Date[],6,10)==days[i])
  out[i,] = quantile(dis2[ind,][,2], na.rm=TRUE)
}

head(out)    



out2 = melt(out)
head(out2)
colnames(out2) = list("id","variable","value")
out2$variable = factor(out2$variable, levels=c("1","2","3","4","5"))
str(out2)

# ------------------ Format the individual years of data --------------------- #
# Subset years for plotting 


dis_50 =subset(dis2, substr(dis2$Date,1,4)=='1950')
dis_51 =subset(dis2, substr(dis2$Date,1,4)=='1951')
dis_52 =subset(dis2, substr(dis2$Date,1,4)=='1952')
dis_53 =subset(dis2, substr(dis2$Date,1,4)=='1953')
dis_54 =subset(dis2, substr(dis2$Date,1,4)=='1954')
dis_55 =subset(dis2, substr(dis2$Date,1,4)=='1955')
dis_56 =subset(dis2, substr(dis2$Date,1,4)=='1956')
dis_57 =subset(dis2, substr(dis2$Date,1,4)=='1957')
dis_58 =subset(dis2, substr(dis2$Date,1,4)=='1958')
dis_59 =subset(dis2, substr(dis2$Date,1,4)=='1959')
dis_60 =subset(dis2, substr(dis2$Date,1,4)=='1960')
dis_61 =subset(dis2, substr(dis2$Date,1,4)=='1961')
dis_62 =subset(dis2, substr(dis2$Date,1,4)=='1962')
dis_63 =subset(dis2, substr(dis2$Date,1,4)=='1963')
dis_64 =subset(dis2, substr(dis2$Date,1,4)=='1964')
dis_65 =subset(dis2, substr(dis2$Date,1,4)=='1965')
dis_66 =subset(dis2, substr(dis2$Date,1,4)=='1966')
dis_67 =subset(dis2, substr(dis2$Date,1,4)=='1967')
dis_68 =subset(dis2, substr(dis2$Date,1,4)=='1968')
dis_69 =subset(dis2, substr(dis2$Date,1,4)=='1969')
dis_70 =subset(dis2, substr(dis2$Date,1,4)=='1970')
dis_71 =subset(dis2, substr(dis2$Date,1,4)=='1971')
dis_72 =subset(dis2, substr(dis2$Date,1,4)=='1972')
dis_73 =subset(dis2, substr(dis2$Date,1,4)=='1973')
dis_74 =subset(dis2, substr(dis2$Date,1,4)=='1974')
dis_75 =subset(dis2, substr(dis2$Date,1,4)=='1975')
dis_76 =subset(dis2, substr(dis2$Date,1,4)=='1976')
dis_77 =subset(dis2, substr(dis2$Date,1,4)=='1977')
dis_78 =subset(dis2, substr(dis2$Date,1,4)=='1978')
dis_79 =subset(dis2, substr(dis2$Date,1,4)=='1979')
dis_80 =subset(dis2, substr(dis2$Date,1,4)=='1980')
dis_81 =subset(dis2, substr(dis2$Date,1,4)=='1981')
dis_82 =subset(dis2, substr(dis2$Date,1,4)=='1982')
dis_83 =subset(dis2, substr(dis2$Date,1,4)=='1983')
dis_84 =subset(dis2, substr(dis2$Date,1,4)=='1984')
dis_85 =subset(dis2, substr(dis2$Date,1,4)=='1985')
dis_86 =subset(dis2, substr(dis2$Date,1,4)=='1986')
dis_87 =subset(dis2, substr(dis2$Date,1,4)=='1987')
dis_88 =subset(dis2, substr(dis2$Date,1,4)=='1988')
dis_89 =subset(dis2, substr(dis2$Date,1,4)=='1989')
dis_90 =subset(dis2, substr(dis2$Date,1,4)=='1990')
dis_91 =subset(dis2, substr(dis2$Date,1,4)=='1991')
dis_92 =subset(dis2, substr(dis2$Date,1,4)=='1992')
dis_93 =subset(dis2, substr(dis2$Date,1,4)=='1993')
dis_94 =subset(dis2, substr(dis2$Date,1,4)=='1994')
dis_95 =subset(dis2, substr(dis2$Date,1,4)=='1995')
dis_96 =subset(dis2, substr(dis2$Date,1,4)=='1996')
dis_97 =subset(dis2, substr(dis2$Date,1,4)=='1997')
dis_98 =subset(dis2, substr(dis2$Date,1,4)=='1998')
dis_99 =subset(dis2, substr(dis2$Date,1,4)=='1999')
dis_00 =subset(dis2, substr(dis2$Date,1,4)=='2000')
dis_01 =subset(dis2, substr(dis2$Date,1,4)=='2001')
dis_02 =subset(dis2, substr(dis2$Date,1,4)=='2002')
dis_03 =subset(dis2, substr(dis2$Date,1,4)=='2003')
dis_04 =subset(dis2, substr(dis2$Date,1,4)=='2004')
dis_05 =subset(dis2, substr(dis2$Date,1,4)=='2005')
dis_06 =subset(dis2, substr(dis2$Date,1,4)=='2006')
dis_07 =subset(dis2, substr(dis2$Date,1,4)=='2007')
dis_08 =subset(dis2, substr(dis2$Date,1,4)=='2008')
dis_09 =subset(dis2, substr(dis2$Date,1,4)=='2009')
dis_10 =subset(dis2, substr(dis2$Date,1,4)=='2010')
dis_11 =subset(dis2, substr(dis2$Date,1,4)=='2011')
dis_07 =subset(dis2, substr(dis2$Date,1,4)=='2007')
dis_08 =subset(dis2, substr(dis2$Date,1,4)=='2008')
dis_09 =subset(dis2, substr(dis2$Date,1,4)=='2009')
dis_10 =subset(dis2, substr(dis2$Date,1,4)=='2010')
dis_11 =subset(dis2, substr(dis2$Date,1,4)=='2011')
dis_12 =subset(dis2, substr(dis2$Date,1,4)=='2012')
dis_13 =subset(dis2, substr(dis2$Date,1,4)=='2013')
dis_14 =subset(dis2, substr(dis2$Date,1,4)=='2014')
dis_15 =subset(dis2, substr(dis2$Date,1,4)=='2015')
dis_16 =subset(dis2, substr(dis2$Date,1,4)=='2016')
dis_17 =subset(dis2, substr(dis2$Date,1,4)=='2017')


length(dis_07$Date)    # Check 
length(dis_08$Date)     
length(dis_09$Date)
length(dis_10$Date)
length(dis_11$Date)

dis3 <- as.data.frame(cbind(dis_50$val,dis_51$val,dis_52$val,dis_53$val,dis_54$val,dis_55$val,dis_56$val,dis_57$val,dis_58$val,dis_59$val,
                            dis_60$val, dis_61$val,dis_62$val,dis_63$val,dis_64$val,dis_65$val,dis_66$val,dis_67$val,dis_68$val,dis_69$val,
                            dis_70$val, dis_71$val,dis_72$val,dis_73$val,dis_74$val,dis_75$val,dis_76$val,dis_77$val,dis_78$val,dis_79$val,
                            dis_80$val, dis_81$val, dis_82$val,dis_83$val,dis_84$val,dis_85$val,dis_86$val,dis_87$val,dis_88$val,dis_89$val,
                            dis_90$val, dis_91$val, dis_92$val,dis_93$val,dis_94$val,dis_95$val,dis_96$val,dis_97$val,dis_98$val,dis_99$val,
                            dis_00$val, dis_01$val, dis_02$val,dis_03$val,dis_04$val,dis_05$val,dis_06$val,dis_07$val,dis_08$val,dis_09$val,
                            dis_10$val,dis_11$val,dis_12$val, dis_13$val,dis_14$val,dis_15$val,dis_16$val,dis_17$val))

class(dis3)
head(dis3)

colnames(dis3) = list("D1950","D1951","D1952","D1953","D1954","D1955","D1956","D1957","D1958","D1959","D1960",
                      "D1961","D1962","D1963","D1964","D1965","D1966","D1967","D1968","D1969","D1970",
                      "D1971","D1972","D1973","D1974","D1975","D1976","D1977","D1978","D1979","D1980",
                      "D1981","D1982","D1983","D1984","D1985","D1986","D1987","D1988","D1989","D1990",
                      "D1991","D1992","D1993","D1994","D1995","D1996","D1997","D1998","D1999","D2000",
                      "D2001","D2002","D2003","D2004","D2005","D2006","D2007","D2008","D2009",
"D2010",
                      "D2011", "D2012", "D2013", "D2014", "D2015", "D2016", "D2017")
# Combine discharge with quantile data
dis4 = cbind(dis3,out2)
str(dis4)
head(dis4)

# ------------------------ Plots --------------------------------------------- #

#p <- 
ggplot(dis4) + 
  geom_area(aes(id, value, fill=variable)) + 
  geom_line(aes(id,D2003)) +                       # Change what year to plot in black 
  ylab(expression(paste('Mean Daily Discharge','  ',(ft^3 / sec)))) + 
  xlab('Day of the Year') + 
  ggtitle("2000 Suwannee River Comparison") +  # Change title 
  scale_fill_discrete(guide = guide_legend(title = "Quantiles", reverse=TRUE),
                      labels=c('0%','25%','50%','75%','100%')) +theme_bw()   

# or with a white background 

# p + scale_fill_discrete(guide = guide_legend(title = "Quantiles")) 
# p + guides(fill=guide_legend(reverse=TRUE))
# guide_legend(fill=FALSE)  
### END ###### END ###### END ###### END ###### END ###### END ###### END ###    