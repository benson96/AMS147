function[y] = Lagrange_interp(xi,yi,x)

%Input:
% xi: vector of interpolation nodes 
% yi: vector of data points at interpolation nodes 
% x: vector of points in which we evaluate the polynomial interpolant
%Output:
% y: polynomial interpolant evaluated at x

n=size(xi,2);
L=ones(n,size(x,2));
if (size(xi,2)~=size(yi,2))
   fprintf(1,'\nERROR!\nPOINTX and POINTY must have the same number of elements\n');
   y=NaN;
else
   for i=1:n
      for j=1:n
         if (i~=j)
            L(i,:)=L(i,:).*(x-xi(j))/(xi(i)-xi(j));
         end
      end
   end
   y=0;
   for i=1:n
      y=y+yi(i)*L(i,:);
   end
end