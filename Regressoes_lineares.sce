//T  = x;
//c = y;
clc;
clear;
t = [-50 -30 0 60 90 110];
c = [1250 1280 1350 1480 1580 1700];
sumT = sum(t);
n = 6;
sumC =sum(c);
TxC = t * c'
sumTxC = sum(TxC);
SumT2 = sum(t*t');
a1 = ((n * (sumTxC) - (sumT *sumC))/(n* SumT2 - (sumT)^2));
yBarra = sumC/n;
a0 = (yBarra - (a1 * sumT/n));
i = 1;
while  i < 7 then
 intSt = ((c(i) - yBarra)^2)
 intSr = ((c(i) - a0 - (a1*t(i)))^2)
i = i + 1;
end
St = sum(intSt);
Sr = sum(intSr);
r2 = ((St - Sr)/St);
func = a0 + a1*t;
plot(t,func,'LineWidth',2);
scatter(t,c,'fill');
xgrid(1);
printf("O ao é igual a: %.6f\n",a0);
printf("O a1 é igual a: %.6f\n",a1);
printf("O r² é igual a: %.6f\n",r2);
