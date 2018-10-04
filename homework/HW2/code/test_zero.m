%Outputs:
% zc: zero obtained by using the chord method 
% zn: zero obtained by using the Newton method
% ec,en:error vectors with components......
% x: row vector of 1000 evenly spaced nodes in [1,1]
% f: row vector representing the function(1) evaluated at x.
function [zc,zn,ec,en,x,f] = test_zero()
x = linspace(-1,1,1000); 
F = @(x) 16*x.^5-20*x.^3+5*x; 
dFdx = @(x) 16*5*x.^4-20*3*x.^2+5; 
tol = 10^-15; 
Nmax = 20000; 
a = -0.99; 
b = -0.9; 
x0 = -0.99; 
z0 = cos(9*pi/10); 
iter=1; 
u=F(x0); 
v=dFdx(x0); 
err=abs(u/v); 
while (err>tol)&&(iter<=Nmax)&&(v~=0) 
      en(iter) = abs(x0-z0); 
      x1=x0-u/v; 
      err=abs(x1-x0); 
      x0=x1; 
      u=F(x0); 
      v=dFdx(x0);
      iter=iter+1; 
end
zn = x0; 
iter=1;
u=F(a);
v=F(b);
err=abs(b-a);
while (err>tol)&&(iter<=Nmax)&&((v-u)~=0) 
      x0=b-v*(b-a)/(v-u);
      ec(iter) = abs(x0-z0);   
      a=b; 
      u=v; 
      b=x0;
      v=F(b);
      iter=iter+1;
      err=abs(b-a);
end
zc = b;
f = F(x); 
plot(x,f); 
xlabel('x');ylabel('f(x)'); 
figure(2) 
semilogy(ec); 
hold on
semilogy(en); 
legend('chord','Newton'); 
xlabel('iterations');ylabel('error'); 
figure(3) 
loglog(ec(1:end-1),ec(2:end),'r',en(1:end-1),en(2:end),'b'); 
legend('chord','Newton');
xlabel('e_{k+1}');ylabel('e_k');
end