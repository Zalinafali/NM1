function [] = calculate_errors(A,L,X,b)

    error_dec = norm(A-L*L')/norm(A);
    disp('error_dec = '); disp(error_dec)
            
    M = A'*A;
    b=b(:);
    Z = M\b;
    disp('Z =');disp(Z)
    error_rel = norm(X - Z)/norm(X);
    disp('error_rel = '); disp(error_rel)

end

