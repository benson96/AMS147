    function [L]=plot_Lebesgue_function(xi)
x = linspace(-1,1,100);
n = length(xi);
L = one(n);
for i = 1:n
    for j = 1:n
        if i ~= j
            L(i) = L(i).*(x-xi(j))/(xi(i)-xi(j));
        end
    end
end
L = abs(L(i));
for i = 1:n
    plot(x,L(i));
    hold on
end