//t = x;
//f = y;
clc;
clear;
t = [10 15 20 25 40 50 55 60 75];
f = [5 20 18 40 33 54 70 60 78];
subplot(211);
// Exponencial Logaritimica
n = 9;
lnf = log(f);
sumT = sum(t);
sumF = sum(lnf);
sumFxT = sum(t .* lnf);
sumT2 = sum(t .* t);
a1 = (((n*sumFxT) - (sumT * sumF ))/((n*sumT2) - (sumT^2)));
yBarra = sumF/n;
a0 = (yBarra - (a1 * sumT/n));
i = 1;
while  i < length(t) + 1 then
    intSt = ((lnf(i) - yBarra)^2)
    intSr = ((lnf(i) - a0 - (a1*t(i)))^2)
    i = i + 1;
end
St = sum(intSt);
Sr = sum(intSr);
r2 = ((St - Sr)/St);
func = log(a0) + a1*t;
disp(func)
plot(t,func,'LineWidth',2);
scatter(t,lnf,'fill');
xgrid(1);
xtitle('Funcao Exponencial Logaritimica');
printf('------ FUNCAO EXPONENCIAL Logaritimica -----\n');
printf("O ao é igual a: %.6f\n",a0);
printf("O a1 é igual a: %.6f\n",a1);
printf("O r² é igual a: %.6f\n",r2);
subplot(212);


//Exponencial
alfa = exp(a0);
beta1 = a1;
y = alfa*exp(beta1*t);
plot(t,y,'LineWidth',2);
scatter(t,f,'fill');
xgrid(1);
xtitle('Funcao Exponencial');
printf('------ FUNCAO EXPONENCIAL-----\n');
printf("O alfa é igual a: %.6f\n",alfa);
printf("O beta é igual a: %.6f\n",beta1);
printf("O r² é igual a: %.6f\n",r2);
