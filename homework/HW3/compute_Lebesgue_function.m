function [lambda,LL] = compute_Lebesgue_function(xi)

%Input:
% xi: vector of interpolation nodes xi=[xi(1) ... xi(N+1)]
%Output:
% lambda:Lebesgue function  ¦ËN(x) evaluated at 1000evenly_spaced nodes
% between xi(1)and xI(N+1)
% L: Lebesgue constant ¦«N

x = linspace(min(xi),max(xi),1000); 
n = length(xi); 
poly = ones(n,length(x));

for k=1:n
  for j=1:n         
    if j~=k             
    poly(k,:)=poly(k,:).*(x-xi(j))/(xi(k)-xi(j));         
    end
  end
end
   y=0;
   for i=1:n
      y=y+abs(poly(i,:));
   end
lambda=y;
LL= max(lambda);
end