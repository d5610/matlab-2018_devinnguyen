%% Questions for Chapter 5
 

% see the word document Exercises for chapter 5 for the images
%% Q 5.1 Images of matrices

% a) Use a nested for loop to create a matrix M that looks like this:

M =  [2    2     2     2     2     2
     1     2     2     2     2     2
     1     1     2     2     2     2
     1     1     1     2     2     2
     1     1     1     1     2     2
     1     1     1     1     1     2];

M=ones(6);
for i=1:6
    for j=1:6
        if i<=j
            M(i,j)=2;
        end
    end
end
M

% b) Create a color map with two colors, red and green.  Use the image command with the matrix M and the 
% colormap command with this new color map to generate an image that looks like this:

% IMAGE5.1b

img=[1 0 0 ; 0 1 0];
figure(1)
image(M)
colormap(img)
axis equal
axis off

% c) Create a new matrix N so that you get this image using the same colormap as in the example above.

% IMAGE5.1c

N=ones(6);
for i=1:6
    for j=1:6
        if round((i+j)/2)==(i+j)/2
            N(i,j)=2;
        end
    end
end

figure(2)
image(N)
colormap(img)
axis equal
axis off

%% Q 5.2 Making a moving sinusoidal grating with a color map

% A moving sinusoidal grating is one of the classic stimuli of vision research.  
% Just as a pure tone is a fundamental auditory stimulus, a moving grating is a fundamental stimulus for visual motion. 
% This problem works through one way of making a moving grating.

% a) Make a simple grayscale ramp by using image on a matrix M=1:256 and colormap(gray(256)).  It should look like this:

% IMAGE5.2a

M=1:256;
figure(1)
image(M)
colormap(gray(256));

% b) Make a new color map of size 256x3 with each of the three columns (r, g and b) modulating sinusoidally from 0 to 1 for four cycles with a phase of pi.  (If you�re rusty on your trigonometry, see the Hints section).  
% A plot of each column of the color map should look like this:

% IMAGE5.2b

% Apply this color map to the ramp image.  You should get this:  A sinusoidal grating!  
% Think about why this happens using the �paint pots� analogy.

% IMAGE5.2b2

cmap=zeros(256,3);
nCycles=4;
phase=pi;
for i=1:3
    cmap(:,i)=(sin(linspace(0,2*pi*nCycles,256)-phase)+1)/2;
end
colormap(cmap)

% c) Make the grating move or �drift� rightward by changing the phase in a loop, resetting the color map and using the �drawnow� command. 
% You can make the grating drift through 4 cycles over 100 frames by setting the phase with a loop like this:

for phase = linspace(0,8*pi,100)
	for i=1:3
        cmap(:,i)=(sin(linspace(0,2*pi*nCycles,256)'-phase)+1)/2;
    end
	colormap(cmap)
    drawnow
end

%% Q 5.3 Magic Letters 

% Starting with these two matrices:

Z=[ 1 1 1 1 1; ...
    0 0 0 0 1; ...
    0 0 0 1 0; ...
    0 0 1 0 0; ...
    0 1 0 0 0; ...
    1 0 0 0 0; ...
    1 1 1 1 1];

T=[ 1 1 1 1 1; ...
    0 0 1 0 0; ...
    0 0 1 0 0; ...
    0 0 1 0 0; ...
    0 0 1 0 0; ...
    0 0 1 0 0; ...
    0 0 1 0 0];

% Combine Z and T to create a matrix ZT and create two colormaps (which will need to have 4 rows): 
% cmapZ and cmapT, such that the following commands create the following two images.
image(ZT); axis off
colormap(cmapZ); 
colormap(cmapT)
  
%IMAGE3.3

ZT=1+Z+(T*2);
cmapT=[0 0 0 ; 0 0 0 ; 1 .7 .7 ; 1 .7 .7;];
cmapZ=[0 0 0 ; 0 0 1 ; 0 0 0 ; 0 0 1];
image(ZT);
axis off
 
colormap(cmapZ)
saveas(gcf,'_5_2_a.jpg')
 
colormap(cmapT)
saveas(gcf,'_5_2_b.jpg')