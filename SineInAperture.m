%SineInAperture

clear all
close all

amp=1;sf=6;rad=pi;
backLum=128.5;
x=linspace(-pi, pi, 100);

sinewave=sin(x*sf);
oneM=ones(size(sinewave));
sinewave2D=amp*(oneM'*sinewave);
sinewave2D_scaled=((sinewave2D+1)*127.5)+1;
image(sinewave2D_scaled); colormap(gray(256))

[X,Y]=meshgrid(linspace(-pi,pi,100));
ind=find(X.^2 + Y.^2 >rad^2);
sinewave2D_scaled(ind)=100;

%% build the array
naps=2;sep=50;
bigMatSize = [(naps+1)*sep]+[length(x)*naps];
bigMat= backLum*ones(bigMatSize);
stpt=[sep (sep*2)+length(x)];
for i=1:naps
    for j=1:naps
            bigMat(stpt(i):stpt+length(x)-1,stpt(j):stpt(j)+length(x)-1)=...
    sinewave2D_scaled;
    end
end
imagesc(bigMat)