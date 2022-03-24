clc;
clear;
numInterval = 1
while(modulo(numInterval,2) ~= 0)
   numInterval = input('Informe o número de intervalos desejado:   ');
   if(modulo(numInterval,2) ~= 0)
     printf('\n Por favor digite uma entrada válida \n');
   end
end
a = 0;
b = 0.8;
tamInterval = (b - a)/numInterval;
actualX = a + tamInterval;
fxi = 0;
fxp = 0;
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

   if ((modulo(i,2)) ~= 0) then
     fxi = f(actualX) + fxi;
    
    else
     fxp = f(actualX) +  fxp;
        
    end

    actualX = actualX + tamInterval;
    i = i + 1;
end

integral = intg(a,b,d);
fmed = (integral/(b -a))
Erro = -(((b-a)^5)/ (180 * (numInterval^4))) * fmed;
I = (b - a) * ((f(a) + 4*(fxi) +  2*(fxp) + f(b))/(3*numInterval));
printf('O resultado é %f \n',I);
printf('O Erro é %f \n',Erro);
