%Created on Mar 6 
%To implement the fixed-point iteration 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all; clear all; clc
problem = input('Please input which question you want to solve(a/b/c):','s');
if (problem == 'a' || problem == 'b')
    n = input('Please input the number of points:');
    a2 = input('Please input the parameter "a2":');
    xi = input('Please input the initial value of x:');
    epsilon = input('Please input the precision requirement:');
    x = [xi,zeros(1,n-1)];
    for i = 2:n
        x(i) = gFunction_3_1(x(i-1),a2);
    end
    if (x(n)-x(n-1)>=epsilon)
        disp('Not enough iteration cycles to satisfy the convergence');
    else
        plot(x);
        xlabel('n');
        ylabel('value of x_n');
        saveas(gcf,['./','xarray','.jpg']);
        res = ['Iteration converges to: ',num2str(x(n))];
        disp(res);
    end
else if (problem == 'c')
        n = input('Please input the number of points:');
        xi = input('Please input the initial value of x:');
        epsilon = input('Please input the precision requirement:');
        x = [xi,zeros(1,n-1)];
        for i = 2:n
            x(i) = gFunction_3_1_c(x(i-1));
        end
        if (x(n)-x(n-1)>=epsilon)
            disp('Not enough iteration cycles to satisfy the convergence');
        else
            plot(x);
            xlabel('n');
            ylabel('value of x_n');
            saveas(gcf,['./','xarray','.jpg']);
            disp(x(n));
        end
    else 
        disp('Invalid input');
        return; 
    end
end
