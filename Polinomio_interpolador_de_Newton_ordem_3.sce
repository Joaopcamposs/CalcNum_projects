clc;
clear;
x = [10 11 12 13 14 15];
fx = [1400 1900 2500 3250 4200 5400];
inputOrder = input('Escolha a ordem do polinomio:   ');
i = 0;
j = 2;
n  = length(x) -1 ;
y = 11.8;
//Achando b2
for i = 1:n
    resp(1,i) = (fx(1,j) - fx(1,i))/(x(1,j) - x(1,i))
    j = j +1;
end
j = 2;
k = length(resp) - 1
//Achando b3
for i = 1:k
    xUpper = j + 1;
    resp2(1,i) = (resp(1,j) - resp(1,i))/(x(1,xUpper) - x(1,i))
    j = j +1;
end
j = 2;
k = length(resp2) - 1
//Achando b4
for i = 1:k
    xUpper = j + 2;
    resp3(1,i) = (resp2(1,j) - resp2(1,i))/(x(1,xUpper) - x(1,i))
    j = j +1;
end
//Achando a Eq
polinomio = fx(1,1);
printf("Seu coeficiente b1 é : %.6f\n", fx(1,1))
for i = 1:inputOrder
    if i == 1 then
        polinomio = polinomio + (resp(1,1) *(y-x(1,1)));
        printf("Seu coeficiente b2 é : %.6f \n", resp(1,1))
    end
    
    if i == 2 then
    polinomio = polinomio + (resp2(1,1) *(y-x(1,1)) * (y-x(1,2)) );
    printf("Seu coeficiente b3 é : %.6f\n", resp2(1,1))
    end
    
    if i == 3 then
        polinomio = polinomio + (resp3(1,1)*(y-x(1,1))*(y-x(1,2)) * (y-x(1,3)));
        printf("Seu coeficiente b4 é : %.6f\n", resp3(1,1))
    end

end
printf("A resposta do seu polinomio é:  %.6f\n", polinomio)
