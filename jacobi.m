function [ X,k ] = jacobi( A,B,p,e,X)

[m,n]=size(A);
k=0;

while(pnorm(B-A*X,p)>e)
    
    for i=1:m
    sum=0;
    for j=1:n
        if (i~=j)
        sum=sum+A(i,j)*X(j);
        end
    end
    Y(i,1)=(1/A(i,i))*(B(i)-sum);
    end
    k=k+1;
    X=Y;
    
end


end

