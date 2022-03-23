//Trabalho 4
clear;
clc;

function y = f_g1(x)
    y = exp(-x);
endfunction

function y = f_g2(x)
    y = log(1/x);
endfunction

function y = f_erro(a, b)
    if b==0 then
        y = 100;
    end
    y = abs((b-a)/(b))*100;
endfunction

xi = input("Digite a aproximação inicial: ");
etolerado = input("Digite o erro tolerado em porcetagem: ");
//f_g1(xi);
//etolerado = 0.0001

e1=100;
e2=100;

x1=xi;
x2=xi;

while (e1>etolerado || e2>etolerado)
    x12=f_g1(x1);
    x22=f_g2(x2);
    e1=f_erro(x12,x1);
    e2=f_erro(x22,x2);
    x1=x12;
    x2=x22;
end

if e1<=etolerado then
    mprintf("\n\nraiz = %f",x1);
else 
    mprintf("\n\nraiz = %f",x2);
end
