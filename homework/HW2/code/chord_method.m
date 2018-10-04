function [z0,iter,res,his] = chord_method(fun,a,b,tol,Nmax)

%Inputs:
% fun: function handle representing f(x) 
% a, b: interval [a, b] in which we believe there is a zero
% tol: maximum tolerance allowed for the increment |x(k+1) ? x(k)|
% Nmax: maximum number of iterations allowed 

%Outputs:
% z0: approximation of the zero z0 
% iter: number of iterations to obtain z0
% res: residual at z0 (i.e., |f(z0)|) 
% his: vector collecting all the elements of the sequence {x(k)}k=0,1,.. (convergence history)

if fun(a)==0
  z0=a;
  iter=1;
  res=0;
  his=a;
  return;
elseif fun(b)==0
  z0=b;
  iter=1;
  res=0;
  his=b;
  return;
elseif fun(a)*fun(b)>0
  error('f(a)*f(b)>0 -> Please select another interval')
end
I=0;
q=(fun(b)-fun(a))/(b-a);
x=[a (a+b)/2 b];
iter=0;
while iter <= Nmax
  iter = iter+1;
  if fun(x(1))*fun(x(2)) < 0
    x(3) = x(2);
    x(2)=x(2)-(fun(x(2))/q);
    his(iter)=x(2);
  elseif fun(x(2))*fun(x(3)) < 0
    x(1) = x(2);
    x(2) = x(2)-(fun(x(2))/q);
    his(iter)=x(2);
  elseif fun(x(2)) == 0
    z0 = x(2);
    his(iter)=x(2);
    res = 0;
    return;
  end
end
z0=x(2);
end