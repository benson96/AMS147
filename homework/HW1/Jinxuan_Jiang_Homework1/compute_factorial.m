% Input: n: natural number(possibly including 0)
% Output: b: factorial of n
% function[b] = compute_factorial(n)


function [b] = compute_factorial(n)

b = 1;

if n == 0
  b = 1;
elseif n > 0
  for temp = 1:n
    b = b*temp;  
  end
end
