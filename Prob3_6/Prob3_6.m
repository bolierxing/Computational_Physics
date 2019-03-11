%Created on Mar 11 
%To solve Problem 3-6
%--------------------------------------------------------------------------%
close all; clear all; clc

n = input('Please input the number of iteration steps:');
epsilon = input('Please input the precision requirement:');
fx = "5*x^7+2*x-1";
fxd = "35*x^6+2";
fxdd = "210*x^5";
gx = "x^(-3)-10";
gxd = "-3*x^(-4)";
gxdd = "12*x^(-5)";

%f(x)
f1 = halley(fx,fxd,fxdd,epsilon,n,0);
f2 = bisection(fx,epsilon,n,-100,100);
f3 = newton(fx,fxd,epsilon,n,0);

%g(x)
g1 = halley(gx,gxd,gxdd,epsilon,n,1);
g2 = bisection(gx,epsilon,n,0.0001,1);
g3 = newton(gx,gxd,epsilon,n,0.1);

%display the result
res1 = ['Simple zero of f(x) with Halley method: ',num2str(f1)];
res2 = ['Simple zero of f(x) with bisection method: ',num2str(f2)];
res3 = ['Simple zero of f(x) with Newton method: ',num2str(f3)];
res4 = ['Simple zero of g(x) with Halley method: ',num2str(g1)];
res5 = ['Simple zero of g(x) with bisection method: ',num2str(g2)];
res6 = ['Simple zero of g(x) with Newton method: ',num2str(g3)];
disp('Result:');
disp(res1);
disp(res2);
disp(res3);
disp(res4);
disp(res5);
disp(res6);