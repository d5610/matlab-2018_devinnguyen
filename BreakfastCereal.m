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