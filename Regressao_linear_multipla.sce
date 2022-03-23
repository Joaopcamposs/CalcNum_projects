clc;
clear;
x1 = [0 2 2.5 1 4 7];
x2 = [0 1 2 3 6 2];
y = [5 10 9 0 3 27];
n = 6;
sumX1 = sum(x1);
sumX1e2 = sum(x1^2)

sumX12 = sum (x1 * x2');

sumX2 = sum(x2);
sumX2e2 = sum(x2^2);

sumY = sum(y);
sumX1Y = sum(x1 * y');
sumX2Y = sum(x2 * y');

//Resolvendo o Sistema
matrizToSolve = [n sumX1 sumX2 sumY; sumX1 sumX1e2 sumX12 sumX1Y; sumX2 sumX12 sumX2e2 sumX2Y];
resp = rref(matrizToSolve);
a0 = resp(1,4);
a1 = resp(2,4);
a2 = resp(3,4)

yBarra = sumY/n;
i = 1;
while  i < n then
 intSt = ((y(i) - yBarra)^2)
 intSr = ((y(i) - a0 - (a1*x1(i)) -(a2*x2(i)))^2);
i = i + 1;
end
St = sum(intSt);
Sr = sum(intSr);
r2 = ((St - Sr)/St);



printf("O ao é igual a: %.6f\n",a0);
printf("O a1 é igual a: %.6f\n",a1);
printf("O a2 é igual a: %.6f\n",a2);
printf("O r² é igual a: %.6f\n",r2);
