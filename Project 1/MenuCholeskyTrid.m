% MENU
clear
clc
finish=7;  
control=1;

%default data
A = hess(hilb(6));
b = [1,2,3,4,5,6];

while control~=finish 

    control=menu('Cholesky tridiagonal factorization', 'Input tridiagonal matrix A', 'Input vector b',...
                 'Display A and b','Compute factorization of A',...
                 'Compute A^{T}Ax=b', 'Calculate Errors', 'EXIT');

    switch control
        
        case 1
            a = input('main diagonal = ');
            c = input('upper and lower diagonals = ');
            A = tridiag1(a,c,c);
            chol(A);
            
        case 2
            b = input('b = ');
            
        case 3
            disp('A = '); disp(A)
            disp('b = '); disp(b)

        case 4
            L = CholeskyTrid(A);
            disp('L = '); disp(L)
            
        case 5
            X = CholeskyTrid1(A,b);
            disp('X = '); disp(X);

        case 6
            disp('cond A = '); disp(cond(A))
            calculate_errors(A,L,X,b);
            
        case 7
            disp('EXIT')
    end
end
