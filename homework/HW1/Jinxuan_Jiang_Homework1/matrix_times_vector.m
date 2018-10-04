% Input:
% A: n x n matrix
% x: n x 1 vector
% Output:
% y: n x 1 vector
% function[y] = matrix_times_vector(A,x)

function[y]=matrix_times_vector(A,x)

y(1) = 0;
s=0;

[N,M] = size(A);

% i rows
for i = 1 : N
    %j columns
    for j = 1: M
       s = s+(A(i,j) * x(j));
    end
    y(i) = s;
    s = 0;
end
%transform from 1 x n vector to n x 1 vector
%disp(y);
y = y';
disp(y);
