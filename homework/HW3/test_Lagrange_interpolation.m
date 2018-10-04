function [x,f,p1,p2,p3,p4] = test_Lagrange_interpolation()


n1 = 1000;
x = linspace(-1,1,n1);
fun=@(x) 1./(1+20*x.^2);
f=fun(x);
n2 = 8;

for j=1:n2+1
  xi1(j)=-1+((2*(j-1))/n2);
  xi2(j)=cos(pi*(j-1)/n2);
end
yi1=fun(xi1);
yi2=fun(xi2);
[p1] = Lagrange_interp(xi1,yi1,x);
[p2] = Lagrange_interp(xi2,yi2,x);
figure(1);
plot(x,p1,'r')
hold on
plot(x,f)

figure(2);
plot(x,p2,'r')
hold on
plot(x,f)

n3 = 20;
 
for j=1:n3+1
   xi3(j)=-1+(2*(j-1)/n3);
   xi4(j)=cos(pi*(j-1)/n3);
end
 yi3 = fun(xi3);
 yi4 = fun(xi4);
 [p3] = Lagrange_interp(xi3,yi3,x);
 [p4] = Lagrange_interp(xi4,yi4,x);
 figure(3);
 plot(x,p3,'r')
 hold on
 plot(x,f)
 
 figure(4);
 plot(x,p4,'r')
 hold on
 plot(x,f)
 
