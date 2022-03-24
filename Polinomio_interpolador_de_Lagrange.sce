clc;
clear;
x = [-1 0 1 2];
y = [7 4 1 4];
n = 2  // n é o grau do polinomio.
limitSup = n + 1;
i = 1;
j = 1;
searchedValue = 1.5
func = 0;
//Calculando fx
while( i <= limitSup )
 L(1,i) = 1;
   
   while j <= limitSup then
    if j == i then
      j = j + 1
    end
    if(j <= limitSup)
      L(1,i) = L(1,i) * ((searchedValue - x(1,j))/(x(1,i)- x (1,j))); 
    end
     j = j + 1;
   end
func = func + (L(1,i) * y(1,i)) 
j = 1;
i = i +1;
end
printf('Para polinomio de grau 2\n');
disp(func);
