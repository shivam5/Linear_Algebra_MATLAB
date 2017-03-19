function [ C,n ] = basissub( A )

B=rowech(A);
[m,n]=size(A);
e=10^(-5);

for i=1:m
    for j=1:n
        if(B(i,j)>=e)
           C(:,i)=A(:,j);
           break;
        end
    end
end

[m,n]=size(C);

end

