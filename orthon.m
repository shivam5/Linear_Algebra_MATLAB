function [ A ] = orthon(B)

[m,n]=size(B);
A=zeros(m,n);
A(:,1)=B(:,1)/norm(B(:,1));
for i=2:n
    sum=0;
    for j=1:i-1
        sum=sum+proj(A(:,j)',B(:,i)');
    end
    sum=sum';
    A(:,i)=B(:,i)-sum;
    A(:,i)=A(:,i)/norm(A(:,i));
end


end

