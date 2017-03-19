clear;
clc;

A=[27 6 -1; 6 15 2; 1 1 54];
B=[85; 72; 110];
X=[0;0;0];

% for i=1:m
%     for j=1:n
%         if (i==j)
%             D(i,j)=A(i,j);
%             R(i,j)=0;
%         else
%             D(i,j)=0;
%             R(i,j)=A(i,j);
%         end
%     end
% end

[m,n]=size(A);
k=0;
e=10^-5;

while(pnorm(B-A*X,1)>e)
    
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

X