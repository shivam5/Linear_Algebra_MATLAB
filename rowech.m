function [A] = rowech( B )

A=B;
i=1;
j=1;
[m,n]=size(A);
e=10^(-5);
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
 
end

