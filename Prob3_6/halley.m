%Created on 3/11
%To find a simple zero of the input function with the Halley method
%=====================================================================================================================%
function [c] = halley(fun,derive1,derive2,epsilon,n,x1)
	r = [x1,zeros(1,n-1)];
	for i = 2:n 
		x = r(i-1);
		r(i) = x - 2*eval(fun)*eval(derive1)/(2*eval(derive1)*eval(derive1)-eval(fun)*eval(derive2));
	end
	if (r(n)-r(n-1)>epsilon)
		c = 0000;
		disp('Error: Cannot satisfy the required precision!');
	else
		c = r(n);
	end
	
end