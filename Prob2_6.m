%Created on Mar,6
%This program is to calculate the value of the Bessel function
%===============================================================================================================%
clear all;  close all; clc;
x = input('Please the value of the inpendent variable "x":');
j = zeros(1,25);
j(1:2) = [sin(x)/x , sin(x)/(x*x)-cos(x)/x];

%Exact value
exact = zeros(1,25);
for jj = 1:25
    exact(jj) = sqrt(pi/2/x)*besselj(jj-0.5,x);
end

%upward algorithm
for i = 2:24
    j(i+1)= (2*i+1)*j(i)/x - j(i-1);
end
plot(j);
saveas(gcf,['./','upward','.jpg']);

%downward algorithm
j1 = [zeros(1,23),j(24:25)]; %Set the initial term to the value calaulated with upward algorithm
for ii = 1:23
    j1(24-ii) = (2*(24-ii+1)+1)*j1(24-ii+1)/x - j1(24-ii+2);
end
j1 = j1.*(j(1)/j1(1));
plot(j1);
saveas(gcf,['./','downward','.jpg']);

rdiff = (j-j1)./(j+j1);
plot(rdiff);
saveas(gcf,['./','relativeDiff','.jpg']);
    
    