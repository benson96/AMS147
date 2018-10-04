function [I]=int_trapezoidal_rule(fun,a,b,n)

h = (b-a)/(n-1);
xj(1) = 0;
f(1) = 0;

for j=1:n
  xj(j) = a + (j-1)*h;
end

for i=2:n
  f(i) = f(i-1) + h*(fun(xj(i-1)) + fun(xj(i)))/2;
end

I = f(n);

end


% h = (b-a)/(n-1);
% sum = 0;
% 
% for j = 1:n-2
%     xj = a + (j-1)*h;
%     sum = sum + fun(xj);
% end
% I = h*(fun(a) + 2*sum + fun(b))/2;