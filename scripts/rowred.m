clear;
clc;

A=[1 23 9; 2 0 9; 92 8 1; 2 4 1 ];
e=10^(-5);
[m,n]=size(A);
%% Converting to row reduced echelon form

i=1;
j=1;

while ((j<=n) && (i<=m))
    
    [u,pos]=max(abs(A(i:end,j)));
    pos=pos+i-1;
    A([i,pos],:)=A([pos,i],:);
     
    if(abs(A(i,j))>=e)
        for k=1:m
            if(k==i)
                A(k,:)=A(k,:)/A(k,j);
            else        
                A(k,:)=A(k,:)-(A(k,j)/A(i,j))*A(i,:);
            end
        end
        i=i+1;
        j=j+1;  
    else
        j=j+1;
    end
    
end    

for i=1:m
    for j=1:n
        if (abs(A(i,j))<=e)
            A(i,j)=0;
        end
    end
end

disp('Row reduced echelon form');
disp(A);

 
    