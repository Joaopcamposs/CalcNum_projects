//Trabalho 5
clear;
clc;

n = input("Digite o numero maximo de iterações: ");
erroT = input("Digite o erro tolerado(em porcetagem): ");

ca = 0.25; //coeficiente de arrasto
g = 9.81; //gravidade
v = 36;
t=4;
i=0;
erro=100;
x0=50;
pert = (10^(-6));

function y = F(input)
    y = sqrt((g*input)/ca)*tanh(sqrt(((g*ca)/input))*t)-v;
endfunction

while((erro>(erroT/100)) && (i<n))
    omegaX = (x0*pert);
    somaX = (x0+omegaX);
    f1 = F(x0);
    f2 = F(somaX);
    x1 = (x0-(omegaX*f1)/(f2-f1));
    erro = (abs(((x1 - x0) / x0) * 100));
    x0 = x1;
    i=i+1;
end
printf("\no numero de iteracoes foi: %d",i);
printf("\npeso: %.2f", x1);
    
    
    
