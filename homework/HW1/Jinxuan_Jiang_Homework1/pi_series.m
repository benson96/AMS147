%Output: 
% P,E row vectors with 10 components defined by the first 10partial sums
% n1, n2: smallest integer numbers n1 and n2 such that|Pn1+1 ?¦Ð| < 10^?5 and|En2 ?¦Ð| < 10^?5

function [P,E,n1,n2] = pi_series

E(1) = 0;
P(1) = 0;
S = 0;

for i = 0: 100000
    S = S + ((1/(16^i))*((4/(8*i+1)-(2/(8*i+4))-(1/(8*i+5))-(1/(8*i+6)))));
    P(i+1) = S;
end
disp(P(1:10));


S = 0;


for j = 1: 100000
    S = S + (1/(j^2));
    E(j) = sqrt(6)*sqrt(S);
end
disp(E(1:10));

%test the convergence
%{
figure(1)
clf
plot(P(1:10),'r.')
hold
plot(E(1:10),'b.')
%}

n1=0;
n2=0;
%The following code shows how I get n2
for k = 1 : 100000
    if(abs(P(k)-pi) < (10^-5)) && (n1 == 0)
        n1 = k;
    end
    if (abs(E(k)-pi) < (10^-5)) && (n2 == 0)
        n2 = k;
    end
end
n1 = n1-1;
disp(n1);
disp(n2);



 



