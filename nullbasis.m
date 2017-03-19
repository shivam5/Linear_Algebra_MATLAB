function [ C, br ] = nullbasis( A )

B=rowech(A);
[m,n]=size(B);

[br,rank]=basissub(A);

F=1:n;
P=[];
for i=1:m
    for j=1:n
        if(B(i,j)~=0)
            P=[P j];
            break
        end
    end
end
F(P)=[];
C=zeros(n,n-rank);
C(F,:)=eye(n-rank);
C(P,:)=-B(1:rank,F);

end

