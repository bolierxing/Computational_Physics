%Created on 3/10
%To express the equation of Energy derived from the Schrodinger Equation
%================================================================================================%

function [c] = f(m,V0,hbar,a,oe,x)
if (oe == 'o')
	c = sqrt(2*m*(x+V0))*cot(sqrt(2*m*(x+V0))*a/hbar) + sqrt(-2*m*x);
else
	if(oe == 'e')
		c = sqrt(2*m*(x+V0))*tan(sqrt(2*m*(x+V0))*a/hbar) - sqrt(-2*m*x);
	else
		disp('Invalid input: the parity must be odd or even!');
		return;
	end
end
end