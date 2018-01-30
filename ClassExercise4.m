%class exercise ch 4

%%4.1

%a
a=ones(5);
a(3:5,:)=2

%b
b=ones(4,5);
b(:,3:4)=0

% c
c=ones(6,5);
c(2:4,2:3)=0

% d
d=zeros(5);
for i=1:5
    d(:,i)=[ 1 2 3 4 5 ];
end
d

% e
e=ones(6);
for i=1:6
    for j=1:6
        if i<=j
            e(i,j)=2;
        end
    end
end
e

% f
f=ones(5);
for i=1:5
    f(:,i)=(i-1)*5;
end
f

% g
for i=1:5
    g(:,i)=[ 1 2 3 4 5 ]+((i-1)*5);
end
g

% h
h=zeros(8);
h(:,1:2:end)=1

% i
I=zeros(8);
for I=1:2:8 
    for j=1:2:8
        if I==j 
            I(i,j)=1;
        end
    end
end
I

% j
J=ones(5);
for i=1:5
    J(:,i)=[ 0 1 2 3 4]+(i-1);
end
J

% k
for i=1:5 
    k(i,:)=i:i:5*i;
end
k

%l
for i-1:5
    l(i,:)=[1:5]+((i-1)*5);
end

%% 4.2
% a
x=zeros(3,3,3);
x(2,2,2)=1

% b
y=zeros(5,5,5);
y(2:4,2:4,2:4)=1

% 4.3
% a
sub2ind([4,3],3,2)

% b
[i,j]=ind2sub([4,3],7)

%% 4.4
% a
if x>0
    disp('x is positive')
elseif x<0
    disp('x is negative')
end

% b
x<2 || x>pi

% c
(x>2 && y<4) || z==0


%% 4.5
