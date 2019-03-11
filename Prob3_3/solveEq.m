%Created on 3/10
%To solve a even parity finite potential well equation with bisection method
%================================================================================================%

function [c] = solveEq(m,V0,hbar,a,oe,x1,x2,epsilon,n)
c = 000000;
if((x1>0) || (x2>0))
	disp('Invalid input: Energy should be in the interval of [-V0,0] to get a bound state!');
	return;
end
if((x1+V0<0) || (x2+V0<0))
	disp('Invalid input: Energy should be in the interval of [-V0,0] to get a bound state!');
	return;
end

if (f(m,V0,hbar,a,oe,x1)*f(m,V0,hbar,a,oe,x2) > 0)
	disp('Invalid region: no root or multiple roots exist!');
	return;
else 
	for i = 1:n
		E = (x1+x2)/2;
		if (f(m,V0,hbar,a,oe,x1)*f(m,V0,hbar,a,oe,E)<=0)
			x2 = E;
		else
			if(f(m,V0,hbar,a,oe,x2)*f(m,V0,hbar,a,oe,E)<=0)
				x1 = E;
			else 
				disp('Error! Cannot find root. Iteration stops.');
				return;
			end
		end
	end
end

if ( (x2-x1)/2 > epsilon )
	disp('Cannot reach the required precision with the input number of iteration step!');
    c = 0;
	return;
else 
	c = E;
end

end