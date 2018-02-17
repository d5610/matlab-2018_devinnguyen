%ClassExercise6


%%6.1 Color Constancy

n=101;
[X,Y]=meshgrid(linspace(-2,2,n));
X(30:40,10:90) = 0.10;
X(60:70,10:90) = 1.20;

figure(1);
imagesc(X);
colormap(gray(256))

%%6.2 Periphery Drift Illusion

%a
n=600;
segments = 6; 
radius = .7; 

[X,Y] = meshgrid(linspace(-1,1,n));


theta = atan2(Y,X)/pi;
theta = mod(theta*segments,1);

radiusimage = sqrt(X.^2+Y.^2);
aperture=NaN(size(radiusimage));
aperture(radiusimage<radius)=1;
aperture(radiusimage>=radius)=0;

illusion=theta.*aperture;
imagesc(illusion);
axis square
axis off
colormap(winter)

%b
n=600;
segments = 6; 
radius = .7; 

[X,Y] = meshgrid(linspace(-1,1,n));
theta = atan2(Y,X)/pi;
theta = mod(theta*segments,1);

radiusimage = sqrt(X.^2+Y.^2);
aperture=NaN(size(radiusimage));
aperture(radiusimage<radius)=1;
aperture(radiusimage>=radius)=0;

illusion=theta.*aperture;
imagesc(illusion);
axis square
axis off
colormap(gray(256))

%from dark to light clockwise