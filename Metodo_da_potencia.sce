//t = x;
//f = y;
clc;
clear;
t = [10 15 20 25 40 50 55 60 75];
f = [5 20 18 40 33 54 70 60 78];
subplot(211);
// Potencial Logaritimica
n = 9;
logf = log10(f);
logt = log10(t)
sumT = sum(logt);
sumF = sum(logf);
sumFxT = sum(logt * logf');
sumT2 = sum(logt*logt');
a1 = (((n*sumFxT) - (sumT * sumF ))/((n*sumT2) - (sumT^2)));
yBarra = sumF/n;
a0 = (yBarra - (a1 * sumT/n));
i = 1;
while  i <  length(t) + 1 then
    intSt = ((logf(i) - yBarra)^2)
    intSr = ((logf(i) - a0 - (a1*logt(i)))^2)
   i = i + 1;
   end
   St = sum(intSt);
   Sr = sum(intSr);
   r2 = ((St - Sr)/St);
func = log10(a0) + a1*logt;
plot(logt,func,'LineWidth',2);
scatter(t,f,'fill');
xgrid(1);
xtitle('Funcao Potencial Logaritimica');
printf('------ FUNCAO POTENCIAL Logaritimica -----\n');
printf("O ao é igual a: %.6f\n",a0);
printf("O a1 é igual a: %.6f\n",a1);
printf("O r² é igual a: %.6f\n",r2);
subplot(212);


//POTENCIAL
alfa = 10^a0;
beta1 = a1;
y = (alfa*(t^beta1));
plot(t,y,'LineWidth',2);
scatter(t,f,'fill');
xgrid(1);
xtitle('Funcao Pontencial');
printf('------ FUNCAO POTENCIAL-----\n');
printf("O alfa é igual a: %.6f\n",alfa);
printf("O beta é igual a: %.6f\n",beta1);
printf("O r² é igual a: %.6f\n",r2);
