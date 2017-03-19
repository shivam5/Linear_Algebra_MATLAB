function [ C,n ] = basisv( A )

B=rowech(A);
[m,n]=size(A);
e=10^(-5);
C=eye(m);

for i=1:m
    for j=1:n
        if(B(i,j)>=e)
           C(:,j)=A(:,j);
           break;
        end
    end
end

[m,n]=size(C);

end

