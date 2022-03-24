clc;
clear;
numInterval = 2;
while(modulo(numInterval,2) == 0)
    numInterval = input('Informe o número de intervalos desejado:   ');
     if(modulo(numInterval,2) == 0)
        printf('\n Por favor digite uma entrada válida \n');
     end
end
a = 0;
b = 0.8;
tamInterval = (b - a)/numInterval;
actualX = a + tamInterval;
fxi = 0;
fxj = 0;
integral = 0;
function output = f(input)
    // Description of f(input)
    output = 0.2 + 25*(input) - 200*(input ^ 2) + 675 * (input ^ 3) - 900 * (input ^ 4) + 400 * (input ^ 5);
endfunction
function derivada4 = d(input)
         derivada4 = 48000*input -21600;
endfunction
i = 1

while (i <= (numInterval - 1))

   if (modulo(i,3) ~= 0) then
     fxi = f(actualX) + fxi;
    
    else
     fxj = f(actualX) +  fxj;
    end

    actualX = actualX + tamInterval;
    i = i + 1;
end

integral = intg(a,b,d);
fmed = (integral/(b -a))
I = 3*(b - a) * ((f(a) + 3*(fxi) +  2*(fxj) + f(b))/(8*numInterval));
printf('O resultado é %f \n',I);
