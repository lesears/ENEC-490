data=xlsread('EER_EPMRU_PF4_Y35NY_DPGm.xls','Data 1','B11:B370');
Y1 = mean(data(1:12, 1));
Y2 = mean(data(13:24, 1));
Y3 = mean(data(25:36, 1));
Y4 = mean(data(37:48, 1));
Y5 = mean(data(49:60, 1));
Y6 = mean(data(61:72, 1));
Y7 = mean(data(73:84, 1));
Y8 = mean(data(85:96, 1));
Y9 = mean(data(97:108, 1));
Y10 = mean(data(109:120, 1));
Y11= mean(data(121:132, 1));
Y12= mean(data(133:144, 1));
Y13= mean(data(145:156, 1));
Y14=  mean(data(157:168, 1));
Y15 = mean(data(169:180, 1));
Y16 = mean(data(170:192, 1));
Y17 = mean(data(193:204, 1));
Y18 = mean(data(205:216, 1));
Y19 = mean(data(217:228, 1));
Y20 = mean(data(229:240, 1));
Y21 = mean(data(241:252, 1));
Y22 = mean(data(253:264, 1));
Y23 = mean(data(265:276, 1));
Y24 = mean(data(277:288, 1));
Y25 = mean(data(289:300, 1));
Y26 = mean(data(301:312, 1));
Y27 = mean(data(313:324, 1));
Y28 = mean(data(325:336, 1));
Y29 = mean(data(337:348, 1));
Y30 = mean(data(349:360, 1));
data2 =[Y1,Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y9, Y10, Y11, Y12, Y13, Y14, Y15, Y16, Y17, Y18, Y19, Y20, Y21, Y22, Y23, Y24, Y25, Y26, Y27, Y28, Y29, Y30];
data3 = [1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013 2014 2015 2016];

data4 = vertcat(data3, data2);
datafinal = data4.'

%filename = 'monthly_average_price.xlsx'; 
xlswrite("monthly_average_price.xlsx", datafinal)

