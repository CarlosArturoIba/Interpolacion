function PolyintL = Lagrange(x,y,a)
% Entrada:
% x = variable independiente
%y = variable dependiente
% xx = valor de la variable independiente al que se calcula la interpolación
% Ealida:
% PolyintL = valor interpolado de la variable dependiente
m = length(x);
c = 0;
for ii = 1:m
producto = y(ii); 
for j = 1:m
if ii ~= j
producto = producto*(a-x(j))/(x(ii)-x(j));        % Polinomio interpolador de Lagrange
end
end
c = c+producto;
end
PolyintL = c;