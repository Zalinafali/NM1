function [X]=CholeskyTrid1(A,b)

[m,n] = size(A);
if m~=n
    disp('m should be equal to n');
    return;
end

L = CholeskyTrid(A);
Q = Lower_triangular(L,b);
Z = Upper_triangular(L',Q);
Y = Lower_triangular(L,Z);
X = Upper_triangular(L',Y);

end