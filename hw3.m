%% Devin Nguyen's Homework Chapter 3 
%Due 1/25/18

%% Q 3.1: Basic calculations.
mat=[ 3 4 5 ; 6 7 8; 9 10 11];


% a) Calculate the max of mat along each row.
max(mat')
% ans= 5 8 11

% b) Calculate the overall mean of mat.
mean(mat(:))
% ans=7

% c) Square each element of mat, and calculate the mean along each column.
mat.^2;
mean(mat)
% ans= 9    16    25
%      36   49    64
%      81   100   121
% ans= 6 7 8

%% Q 3.2: more basic calculations.
 
% a) Calculate the mean of the vector: 
vect=[ 1 4 9 16 25 36 49 64 81 100 121 144 169 196 225]
mean(vect)
% ans=82.6667

% b) Calculate the mean of the even numbers of vect.
% 
% evenvals = 0; % don't use the variable name even - it's a command in Matlab
% for i = 1:1:7
%     evenvals = evenvals + vect(2*i);
% end

% not correct
 % one way is
ind=find(vect/2==round(vect/2));
mean(vect(ind))
 
% ans= 80

%% Q 3.7: Inner and Outer Products

% You are examining generosity behavior in 12 three year olds. 
% The number of times each child is observed to engage in a sharing behaviour 
% with his/her peer is described by the vector: 
num_shares=[1   1   3  19  10   3  16  14   0   1   1  29]; 

% The number of interactions each 3 year old has with a peer during the
% observation period is described by a second vector: 
num_interact = [3   2  21  31  37   5  23  19   3  13   6  32]; 

% a) Find the average (across subjects) of the number of sharing behaviours 
% (av_shares) by adding all the values in num_shares and dividing by 12
av_shares=sum(num_shares)/12;

% b) use Matlab’s ‘mean’ function to get the same number 
mean(num_shares)

% c) Now, create the vector: 
w=ones(12,1)./12;

% Show that the inner product of w and num_shares is the same as av_shares. 
% Try to use words to explain why. 
dot(w,num_shares)

%help!! Got this function online but don't quite understand this concept
% I understand that w= ones(12,1)./12; creates a column of 0.0833 twelve times...that equals ~1
%so im confused why w*av_shares won't work
num_shares*w

% the way to think about matrix multiplication is that for A*B= C, C will
% have the number of rows in A and the number of columns in B. num_shares
% is 1 x 12, w is 12 x 1.

% d) Use pointwise division to get the probability of sharing on a given peer 
% interaction for each child (prob_share) 
prob_share=num_shares./num_interact

% e) Show that the inner product of prob_share and num_interact is the same 
% as the sum of num_shares using matlab code. 
% Use words to explain why
prob_share*num_interact'
sum(num_shares)

%??? Can you try to explain why!



