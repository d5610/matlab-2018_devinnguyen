%HW6

%%6.1
clear all
leftcolor=.4;
rightcolor=.8;
circlecolor=.6;
bordercolor=1;

circle=1/3;
imgSize = 100;

%ring1
 
[X,Y]=meshgrid(linspace(-1,1,imgSize));
R=sqrt(X.^2+Y.^2);
 
inside=zeros(size(R));
inside(find(R<circle/2))=1;
 
outside=zeros(size(R));
outside(find(R<1.5*circle))=1;
 
Rring=outside-inside;
RringL=logical(outside-inside);
 
imagesc(Rring)
 
bigMat=ones(size(R))*leftcolor;
bigMat(:,50:end)=rightcolor;
  
bigMat(find(Rring))=circlecolor;
image((bigMat*255)+1);
axis square
colormap(gray(256)); 

%ring2



%ring3



%%6.2

%stim1

[X,Y]=meshgrid(linspace(-1,1,600));

theta1=atan2(Y,X)*-180/pi;
theta1=mod(theta1+1,30);
theta2=mod(-theta1+1,30);

radiusimage=(X.^2+Y.^2);
radiusimage=radiusimage<.5;
theta1(radiusimage)=theta2(radiusimage);

imagesc(theta1);
axis square
axis off
colormap(gray(256))

%stim2

[X,Y]=meshgrid(linspace(-1,1,600));

theta1=atan2(Y,X)*-180/pi;
theta1=mod(theta1+15,30);
theta2=mod(-theta1+15,30);
 
radiusimage=X.^2+Y.^2;
radiusimage=radiusimage<.5;
theta1(radiusimage)=theta2(radiusimage);

imagesc(theta1);
axis square
axis off
colormap(gray)
