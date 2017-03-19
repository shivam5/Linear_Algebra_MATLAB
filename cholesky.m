function [ X ] = cholesky( A,B )
tic
[m,n]=size(A);
[sym,pos]=sympos(A);
L=zeros(m,n);

if(sym+pos==2)
    for i=1:m
        for j=1:i
            sum=0;
            for k=1:j-1
                sum=sum+L(i,k)*L(j,k);
            end
            
            if(i==j)
                L(i,j)=(A(i,j)-sum)^(1/2);
            else
                L(i,j)=(A(i,j)-sum)/L(j,j);
            
            end
        end
    end
    X=inv(L)'*inv(L)*B;
                
else
    disp('The matrix is not symmetric or Positive definite');
end
toc
end
