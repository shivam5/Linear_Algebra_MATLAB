function [ X ] = solve( A,B )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
tic
    X=inv(A)*B
toc

end

