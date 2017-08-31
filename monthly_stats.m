function [ n ] = monthly_stats( d )
%[data text combined] = xlsread('RNGWHHDm.xls','Data 1')
m = zeros(12, 2);

for i = 1:12
%calculate mean and std., put those into the right spot in output matrix>
    imonth = d(i,:);
    monthly_mean = mean(imonth);
    m(i,1) = monthly_mean;
    monthly_sd = std(imonth);
    m(i,2) = monthly_sd;
end
n=m;




%UNTITLED12 Summary of this function goes here
%   Detailed explanation goes here


end

