function [ X,k ] = sor( A,B,p,e,X,w)

[m,n]=size(A);
k=0;

while(pnorm(B-A*X,p)>e)
    
    for i=1:m
    sum=0;
    for j=1:n
        if (j<i)
        sum=sum+A(i,j)*Y(j);
        elseif (j>i)
        sum=sum+A(i,j)*X(j);
        end
    end
    Y(i,1)=(1-w)*X(i,1)+(w/A(i,i))*(B(i)-sum);
    end
    k=k+1;
    X=Y;
    
end


end
