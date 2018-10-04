function [y] = Lagrange_interp(xi,yi,x)
n = length(xi)-1;
m = length(x);
L = ones(m,n+1);

for j = 1:(n+1)
    for i = 1:(n+1)
        if j ~= i
            L(:,j) = L(:,j).*(x' - xi(i))/(xi(j)-xi(i));
        end
    end
end

y = yi*L';