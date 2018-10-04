function [em,et,es] = test_integration()


a = -3;
b = 1;

fun = @(x) (cos((3/2)*exp(-x^2))/(1+x^2)-x^3/30);
%xf = linspace(-3,1,100);
% figure(1);
% plot(xf,fun(xf));
I = 1.6851344770476;
i = 1000;
Im=zeros(999,1);
It=zeros(999,1);
Is=zeros(999,1);

figure(2);
for n=2:i
  Im(n-1)=int_midpoint_rule(fun,a,b,n);
  It(n-1)=int_trapezoidal_rule(fun,a,b,n);
  Is(n-1)=int_Simpson_rule(fun,a,b,n);
end
em=abs(Im-I);
et=abs(It-I);
es=abs(Is-I);

figure(2)
loglog(2:1:1000,em,'r')
hold on
loglog(2:1:1000,et,'b')
hold on
loglog(2:1:1000,es,'k')
end




