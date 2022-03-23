//t = x;
//f = y;
clc;
clear;
t = [10 15 20 25 40 50 55 60 75];
f = [5 20 18 40 33 54 70 60 78];
// Saturacao
n = 9;
yForCalc = 1/f;
tForCalc = 1/t
sumT = sum(tForCalc);
sumF = sum(yForCalc);
sumFxT = sum(tForCalc .* yForCalc);
disp(sumFxT)
sumT2 = sum(tForCalc .* tForCalc);
a1 = (((n*sumFxT) - (sumT * sumF ))/((n*sumT2) - (sumT^2)));
yBarra = sumF/n;
a0 = (yBarra - (a1 * sumT/n));
i = 1;
while  i < length(t) + 1 then
   intSt = ((yForCalc(i) - yBarra)^2)
   intSr = ((yForCalc(i) - a0 - (a1*tForCalc(i)))^2)
   i = i + 1;
end 
St = sum(intSt);
Sr = sum(intSr);
r2 = ((St - Sr)/St);

alfa = 1/a0;
beta1 = (alfa * a1);

y = alfa * ((t') .* (1/(t + beta1)));

plot(t,y,'LineWidth',2);
scatter(t,f,'fill');
xgrid(1);
xtitle('Funcao Saturacao');
printf('------ FUNCAO SATURACAO -----\n');
printf("O ao é igual a: %.6f\n",a0);
printf("O a1 é igual a: %.6f\n",a1);
printf("O r² é igual a: %.6f\n",r2);
