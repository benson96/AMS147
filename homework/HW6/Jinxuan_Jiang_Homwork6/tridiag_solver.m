function x = tridiag_solver(e,a,c,b)
%Input:
  %e=[e1 e2 ，，， en?1] 
  %a=[a1 a2 ，，， an] 
  %c=[c1 c2 ，，， cn?1] 
  %b=[b1 b2 ，，， bn]T
%Output:
  %x=[x1 x2 ，，， xn]T

A = diag(a) + diag(c,1) + diag(e, -1);

x = inv(A)*b;

end