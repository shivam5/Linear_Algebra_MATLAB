function [ x ] = pnorm (A,p)

if p=='fro'
    p=2;
end

[m,n]=size(A);

if p==1
    sum=zeros(1,n);
    for j=1:n
        for i=1:m
            sum(j)=sum(j)+abs(A(i,j));
        end
    end
    x=max(sum);
    
elseif p==inf
    sum=zeros(1,m);
    for i=1:m
        for j=1:n
            sum(i)=sum(i)+abs(A(i,j));
        end
    end
    x=max(sum);
        
else
    sum=0;
    for i=1:m
        for j=1:n
            sum=sum+abs(A(i,j))^p;
        end
    end
    x=sum^(1/p);
end