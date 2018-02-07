%% Homework Chapter 4
 
%% Q 4.1: Making matrices
 
% Create the following matrices without typing in the numbers by hand:

mat1=[5     0     0     0     0; ...
     0    10     0     0     0; ...
     0     0    15     0     0; ...
     0     0     0    20     0; ...
     0     0     0     0    25];
 
 a=zeros(5);
 for i=1:5
     a(i,i)=i*5
 end

  mat2=[5     5     5     5     5; ...
    10    10    10    10    10; ...
    15    15    15    15    15; ...
    20    20    20    20    20; ...
    25    25    25    25    25];

b=zeros(5);
for i=1:5
    b(:,i)=[5 10 15 20 25];
end
b

mat3=[4     3     2     1     0; ...
     9     8     7     6     5; ...
    14    13    12    11    10; ...
    19    18    17    16    15; ...
    24    23    22    21    20];

 c=zeros(5,5);
for i=1:5
    for j=1:5
        c(i,j)=((i*5)-j)
    end
end
c

mat4=[1     2     3     4     5; ...
     6     7     8     9    10; ...
    11    12    13    14    15; ...
    16    17    18    19    20];

d=zeros(4,5);
for i=1:4
    for j=1:5
        d(i,j)=((i-1)*5)+j
    end
end
d

mat5=[19    18    17    16    15; ...
    14    13    12    11    10; ...
     9     8     7     6     5; ...
     4     3     2     1     0]; ...

e=20-reshape([1:20],5,4)'
 
mat6=[0     0     0     0     0; ...
    10    10    10    10    10; ...
    20    20    20    20    20; ...
    30    30    30    30    30];

f=zeros(4)
for i=1:5
    f(:,i)=[0 10 20 30];
end
f

mat7=[0     1     0     1     0; ...
     1     0     1     0     1; ...
     0     1     0     1     0; ...
     1     0     1     0     1];

for i=1:5
    for j=1:5
        g(i,j)= mod(i+j,2);
    end
end
g
 
%% Q 4.2: Indexing, matrices, length and for
You run an experiment and the data is collected into 
% the following 3D matrix

mat(:,:,1) = [9    16    16    18     4; ...
     6    16    11    11     6; ...
    10    13     7    12     9; ...
    10     8    19    12     5];

mat(:,:,2) = [17     5     9     9    12; ...
     4     9     4     2     5; ...
     5     6    18     5    12; ...
     3    18    20     8    14];

% The rows represent repeated measurements, 
% the columns represent subjects, 
% and the 3rd dimension represents whether the subject 
% had drunk a cup of tea before the experiment.
% So each subject did the experiment 8 times, 
% four times with a cup of tea, four times without.

% a) Find out how many scores there are greater or 
% equal to 15.

length(find(mat(:)>15))

% b) Find out how many scores greater or equal to 15 
% there were among people who didn’t get the cup of tea.

length(find(mat(:,:,1)>15))

%c) Set all the values less than or equal to 4 to NaN.

newmat=mat;
newmat(newmat<=4)=NaN;

% d) Calculate the mean for each subject 
% (not including values less than or equal to 4).
% If you feel very brave do it without using nonanmean from 
% the github account

mean=NaNmean(NaNmean(newmat,1),3);

% e) write a script where you go through each column 
% (subject) of data, and display for each subject

%       (i) how many NaN there are in that subject’s data, and
%       (ii) how many values there are that are greater or equal to 15.



%% Q 4.3: Logical operations, mod.

% Write a script so that if x is:

 % 0, 2, 4, 6  … etc.  
 % The script prints “x is an even integer”
 
% 1 3 5 7  … etc.  
% The script prints “x is an odd integer”x= 2

% 1 3 5 7  … etc.  
% The script prints “x is an odd integer”

% A positive non-integer (e.g. 3.2)
 % the script prints “x is a positive non-integer”

% A negative non-integer (e.g. -2.2) 
% the script prints “x is a negative non-integer”

x=2
 if mod(x,2)==0
    disp('x is an even integer')
 elseif mod(x,2)==1
     disp('x is an odd integer')
 elseif x>=0
     disp('x is a positive non-integer');
 elseif x<=0
     disp('x is a negative non-integer')
 end

%% Q 4.4: While

% Write a script that on each loop rolls four dice and
% displays the sum of the four dice. 
% The program should count the number of rolls until
% the sum of the four dice is equal to 20.

sumdice=Inf;
count=0;
while sumdice~=20
    sumdice=sum(randi(6,4,1));
    count=count+1;
end
disp(count)