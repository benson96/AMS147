function test_Lagrange_interpolation()
fun = @(x)(1+20*x.^2).^-1;
x = linspace(-1,1);
plot(x,fun(x),'b');
hold;

subplot(2,2,1);
for j = 1:9
    x1(j) = -1 + 2 * (j-1)/8;
    y1(j) = f(x1(j));
end

a = linspace(min(x1),max(x1));
p = length(x1);
L = ones(p,length(a));

for i = 1:p
    for k = 1:p
        if k ~=i
            L(i,:) = L(i,:).*(a - x1(k))/(x1(i)-x1(k));
        end
    end
end

y = y1*L;
plot(x1,y1,'r')
hold on;
plot(a,y,'r')
title('Evenly-spaced grid with N = 8');

for j = 1:21
    x2(j) = -1 + 2 * (j-1)/20;
    y2(j) = f(x2(j));
end

a2 = linspace(min(x2),max(x2));
p2 = length(x2);
L2 = ones(p,length(a2));

for i = 1:p2
    for k = 1:p2
        if k ~=i
            L(i,:) = L(i,:).*(a - x1(k))/(x1(i)-x1(k));
        end
    end
end

y = y2*L2;
plot(x2,y2,'r')
hold on;
plot(a2,y,'r')
title('Evenly-spaced grid with N = 20');

