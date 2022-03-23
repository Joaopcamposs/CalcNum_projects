clc;
clear;
x = [0 1 2 3 4 5];
y = [2.1 7.7 13.6 27.2 40.9 61.1];
n = 6;
X2 = x^2
X3 = x^3;
X4 = x^4;
sumX = sum(x)
sumX2 = sum(X2);
sumX3 = sum(X3);
sumX4 = sum(X4);

sumY = sum(y);
sumYX = sum (x * y');
sumX2Y = sum(X2 * y');

//Resolvendo o Sistema
matrizToSolve = [n sumX sumX2 sumY;sumX sumX2 sumX3 sumYX;sumX2 sumX3 sumX4 sumX2Y];
resp = rref(matrizToSolve);
a0 = resp(1,4);
a1 = resp(2,4);
a2 = resp(3,4)

yBarra = sumY/n;
i = 1;
while  i < n then
 intSt = ((y(i) - yBarra)^2)
 intSr = ((y(i) - a0 - (a1*x(i)) -(a2*(x(i)^2)))^2);
i = i + 1;
end
St = sum(intSt);
Sr = sum(intSr);
r2 = ((St - Sr)/St);

t = 0:0.01:5
Eq = a0 + a1 * t + a2 * t^2;
plot(t,Eq,'LineWidth',2);
scatter(x,y,'fill');
xgrid(1);

printf("O ao é igual a: %.6f\n",a0);
printf("O a1 é igual a: %.6f\n",a1);
printf("O a2 é igual a: %.6f\n",a2);
printf("O r² é igual a: %.6f\n",r2);
