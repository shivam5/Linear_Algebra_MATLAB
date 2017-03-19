function [ flag1, flag2 ] = sympos ( A )

[m,n]=size(A);
flag1=1;
flag2=1;

for i=1:m
    for j=1:n
        if(A(i,j)~=A(j,i))
            flag1=0;
            break;
        end
    end
end

for i=1:m
   if(det(A(1:i,1:i))<0)
       flag2=0;
       break;
   end
end

end

