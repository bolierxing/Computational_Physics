choice = input('Please input the data type(single or double):', 's');
if (choice == 'single')
    under = single(1);
else
    if (choice == 'double')
        under = 1;
    else
        disp('Invalid input');
        exit;
    end
end
result = 0;
while(under > 0)
    result = under;
    under = under/2;
end
Result =['The machine precision of a',choice,'floating-point number is:',num2str(result)];
disp(Result)
    
    
    