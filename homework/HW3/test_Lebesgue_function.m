%Output:
% L1,L2,L3,L4: Lebesgue constants

function [L1,L2,L3,L4] = test_Lebesgue_function()

n = 8;
x = linspace(-1,1,1000);

for j = 1:n+1
    xi1(j)=-1+((2*(j-1))/n);
    xi2(j)=cos(pi*(j-1)/n);
end

[lamada1,L1] = compute_Lebesgue_function(xi1);
[Lamada2,L2] = compute_Lebesgue_function(xi2);

figure(1)
plot(x,lamada1),
title('evenly-spaced with N = 8')

figure(2)
plot(x,Lamada2),
title('evenly-spaced with N = 8')

n = 20;
for j = 1:n+1
   xi3(j)=-1+(2*(j-1)/n);
   xi4(j)=cos(pi*(j-1)/n);
end


[lamada3,L3] = compute_Lebesgue_function(xi3);
[lamada4,L4] = compute_Lebesgue_function(xi4);

figure(3)
plot(x,lamada3)
figure(4)
plot(x,lamada4)