clc;
clear all;

A=[1 9 -2; 2 -1 8; 6 1 1];
B=[36; 121; 107];
p=1;
e=10^-7;
X=[0;0;0];

[m,n]=size(A);
k=0;

% while(pnorm(B-A*X,p)>e)
   for i=1:5 
    for i=1:m
    sum=0;
    for j=1:n
        if (j<i)
        sum=sum+A(i,j)*Y(j);
        elseif (j>i)
        sum=sum+A(i,j)*X(j);
        end
    end
    Y(i,1)=(1/A(i,i))*(B(i)-sum);
    end
    k=k+1;
    X=Y
    Z(:,k)=X;
   end
% end
% 
% for i=1:5
% Z(:,k)
% end