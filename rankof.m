function [ rank ] = rankof( A )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

A=rowech(A);
[m,n]=size(A);

rank=0;
 for i=1:m
     flag=0;
     for j=1:n
         if (A(i,j)>10^(-5))
             flag=1;
         end
     end
      if (flag==1)
        rank=rank+1;
       end
 end


end

