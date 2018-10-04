% Input: x: n-dimensional vector (either column vector or row vector)
% Output: z: norm of the vector
% function[z] = compute_Euclidean_norm(x)

function[z] = compute_Euclidean_norm(x)
z = 0;
for k = 1:length(x)
    z = z+x(k)*x(k);
end

z = sqrt(z);
end