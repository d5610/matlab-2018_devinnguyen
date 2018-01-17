% breakfastCereal.m
%
% this program provides examples of fun things you can do
% with cereal boxes
% inspired by Geoff's misspent childhood
% at the breakfast table
%
% written by DN 1/2018
% minor modification 2/2018

frosted='FROSTED FLAKES';
cheerios='CHEERIOS';

frosted_scrambled= frosted;

frosted_scrambled(9)='E';

frosted_scrambled([6 13])=['F' 'F'];
disp(frosted_scrambled);

ff=find('FROSTED FLAKES'=='F')

cheerios='CHEERIOS';
cheerios(1)='O';

%2.1
%a
cheerios='CHEERIOS';
cheerios_scrambled= 'CHEERIOS';
cheerios_scrambled(1)='O';
cheerios_scrambled(5)='P';
%b
chemistry='CHEMISTRY';
chemistry_scrambled='CHEMISTRY';
chemistry_scrambled(1)='O';
chemistry_scrambled(8)='B';
%c
macaroniandcheese='MACARONI AND CHEESE';
macaroniandcheese_scrambled='MACARONI AND CHEESE';
macaroniandcheese_scrambled([3 14])='O';
macaroniandcheese_scrambled(8)='R';


%2.2
%a
str='MACARONI AND CHEESE'
id1= [1 2 7 9 14 15 16 17 18 19];
disp(str(id1))
%b
id2=[15 16 5 9 1 8 7 12 9 8 18 9 3 15 8 7 17 18 17];
disp(str(id2))

%2.3
%a
linspace(1,10,10)
%b
linspace(10,18,5)
%c
linspace(19,15,5)
%d
linspace(10,-4, 8)
%e 
linspace(0,15.7080,6)
%f
0:pi:5*pi

%2.4
str='aaaaaaaaaaaaaaaaaaaa';
%a
str(3:3:end)='c'
%b
str(2:3:end)='b'
%c
disp(str(3:3:end))
%d
str(4:6)='def'
%e
str([4:6 10:12 16:18])='defdefdef'
%f
str([6 12 18])

%2.5
%a
timepts=12:1.23:1000;
timepts=timepts(1:40)
%b
timepts(5)
%c
timepts(end)

%2.6
resp='rererererererererererererererererererere';
%a
resp(5)='k';
disp(resp(5))
%b
resp(5)='r';
%c
disp(resp(2:2:end))

%2.7
vect=12:-1:1
%a
vect(1:12)
%b
vect(12:-1:1)
%c
vect([10 12 9 12 8 4])
%d
vect(1:2)
%e
vect(vect(1:2))
%f
vect(vect)
%g
vect(vect(vect))

