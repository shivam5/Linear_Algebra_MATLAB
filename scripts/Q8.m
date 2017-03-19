clear;
clc;

W1=[1 -1 -1 -2 0; 1 -2 -2 0 -3; 1 -1 -2 -2 1]';
W2=[1 -2 -3 0 -2; 1 -1 -3 2 -4; 1 -1 -2 2 -5]';

W=[W1 -W2];

C=nullbasis(W);
[m,n]=size(C);
A=C(1:m/2,:);

X=basissub(W1*A);

disp('The basis for W1 intersection W2 is:');
disp(X);