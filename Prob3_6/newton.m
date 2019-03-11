%Created on 3/11
%To find a simple zero of the input function with the Newton method
%=====================================================================================================================%
function [c] = newton(fun,derive1,epsilon,n,x1)
	r = [x1,zeros(1,n-1)];
	for i = 2:n 
		x = r(i-1);
		r(i) = x - eval(fun)/eval(derive1);
	end
	if (r(n)-r(n-1)>epsilon)
		c = 0000;
		disp('Error: Cannot satisfy the required precision!');
	else
		c = r(n);
	end
	

	
end