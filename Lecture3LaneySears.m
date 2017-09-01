%Lecture 3

[data text combined] = xlsread('RNGWHHDm.xls','Data 1');
%function done in class
d = annual_profile(data); 
[months,years] = size(d);

%new figure
figure; 
hold on;

%plot
for i  = 1:years
    plot(d(:,i),'color',rand(1,3));
end

xlabel('Month','FontSize',14);
set(gca, 'XTickLabel',{'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'});
set(gca,'XTick',1:1:12);
ylabel('Natural Gas Price ($/MMBtu)','FontSize',14);
legend('2008','2009','2010','2011','2012','2013','2014','2015','2016');
%done in class

% monthly stats function in folder 'monthly_stats.m'
s = monthly_stats(d);

april = s(4,1) + s(4,2)*randn(1000,1);

january = s(1,1) + s(1,2)*randn(1000,1);

figure;
edges = -5:0.5:15;
histogram(april,edges);
hold on;
histogram(january,edges);
xlabel('Natural Gas Price');
ylabel('Frequency');
legend('April','January');
