function [L]=CholeskyTrid (A)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[m,n] = size(A);
if m~=n
    disp('m should be equal to n');
    return;
end

L = eye(n);
L(1,1) = sqrt(A(1,1));
for i=2:n
    L(i,i-1) = A(i,i-1)/L(i-1,i-1);
    L(i,i) = sqrt(A(i,i) - L(i,i-1)^2);
end

end
