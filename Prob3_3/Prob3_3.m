%Created on Mar 9 
%To solve the 1D finite potential well problem
%----------------------------------------------------------------------------------------------------------------------%
close all; clear all; clc
V0 = input('Please input the amptitude of the potential(positive):');
if (V0 <= 0)
    disp('Invalid input! Potential amptitude must be positive!');
    return;
end
m = input('Please input the mass:');
hbar = input('Please input the reduced Planck constant:');
a = input('Please input the width of the potential well:');
oe = input('Please input the parity of the wave function(o/e):','s');
x = -V0+0.01:0.0001:-0.01;
y = zeros(1,length(x));
if (oe == 'o') % The length of the compared character must be the same
    for i=1:length(x)
        y(i) = sqrt(2*m*(x(i)+V0))*cot(sqrt(2*m*(x(i)+V0))*a/hbar) + sqrt(-2*m*x(i));
    end
else 
    if (oe == 'e')
        for j=1:length(x)
            y(j) = sqrt(2*m*(x(j)+V0))*tan(sqrt(2*m*(x(j)+V0))*a/hbar) - sqrt(-2*m*x(j));
        end
    else 
    disp('Invalid input! Parity must be odd or even!');
    return;
    end
end
plot(x,y);
hold on;
x1 = input('Please input the left endpoint of the bisection interval:');
x2 = input('Please input the right endpoint of the bisection interval:');
epsilon = input('Please input the precision requirement of the bisection algorithm:');
n = input('Please input the number of iteration steps of the bisection algorithm:');
E = solveEq(m,V0,hbar,a,oe,x1,x2,epsilon,n);
close all;
disp(E);
