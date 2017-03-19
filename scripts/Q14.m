clear;
clc;

A=[1 0 0 3 4;0 0 1 8 9; 0 0 0 0 0];

[C,br]=nullbasis(A);

disp('The range space basis')
disp(br);

disp('The null space basis for the matrix is:');
disp(C);

            