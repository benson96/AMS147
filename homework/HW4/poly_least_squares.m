function [a,err] = poly_least_squares(x,y,M)


%Input:
% x: vector of nodes x=[x(1) ... x(N)]
% y: vector of data points y=[y(1) ... y(N)] corresponding to [x(1) ... x(N)]
% M: degree of the polynomial model

%Output:
% a: vector of coefficients representing the polynomial (1)
% err: Error between the model and the data in the 2-norm

N = length(x);
b = ones(N,M+1);
for i = 1:N
  for j = 1:M+1 
    b(i,j) = x(i)^(j-1);
  end
end
a = (b'* b)\(b'* y');
p(1) = 0;
err = 0;
for i = 1:N
  for j = 1:M+1
    p = p + (a(j) * x(i)^(j-1));
  end
err = err + (y(i)-p)^2;
end