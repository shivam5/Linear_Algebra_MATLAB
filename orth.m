function [ A ] = orth( B )

[n,m]=size(B);
A=zeros(n,m);
A(1,:)=B(1,:);
for i=2:n
    sum=0;
    for j=1:i-1
        sum=sum+proj(A(j,:),B(i,:));
    end
    A(i,:)=B(i,:)-sum;
end

end

