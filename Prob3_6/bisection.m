%Created on 3/11
%To find a simple zero of the input function with the bisection method
%=====================================================================================================================%
function [c] = bisection(fun,epsilon,n,x1,x2)
c = 0000;
x = x1;
f1 = eval(fun);
x = x2;
f2 = eval(fun);

if (f1*f2 > 0)
	disp('Invalid region: no root or multiple roots exist!');
	return;
else 
	for i = 1:n
		x = (x1+x2)/2;
		f = eval(fun);
		if (f1*f<=0)
			x2 = x;
			f2 = f;
		else
			if(f*f2<=0)
				x1 = x;
				f1 = f;
			else 
				disp('Error! Cannot find root. Iteration stops.');
				return;
			end
		end
	end
end

if ( (x2-x1)/2 > epsilon )
	disp('Cannot reach the required precision with the input number of iteration step!');
    c = 0000;
	return;
else 
	c = x;
end

	
end