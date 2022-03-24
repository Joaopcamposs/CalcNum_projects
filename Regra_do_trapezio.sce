clc;
clear;
numInterval = input('Informe o número de intervalos desejado:   ');
a = 0;
b = 0.8;
tamInterval = (b - a)/numInterval;
actualX = a + tamInterval;
fxi = 0;
integral = 0;
function output = f(input)
    // Description of f(input)
    output = 0.2 + 25*(input) - 200*(input ^ 2) + 675 * (input ^ 3) - 900 * (input ^ 4) + 400 * (input ^ 5);
endfunction
function derivada2 = d(input)
         derivada2 = -400 + 4050*(input) - 10800*(input^2) + 8000*(input ^ 3)
endfunction
i = 1

while (i <= (numInterval - 1))

    fxi = f(actualX) + fxi;
    actualX = actualX + tamInterval;
    i = i + 1;
end

integral = intg(a,b,d);
fmed = (integral/(b -a))
Erro = -(((b-a)^3)/ (12 * (numInterval^2))) * fmed;

I = (b - a) * ((f(a) + 2*(fxi) + f(b))/(2*numInterval));
printf('O resultado é %f \n',I);
printf('O Erro é %f \n',Erro);
