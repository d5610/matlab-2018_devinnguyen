%Different shades of my favorite color

for i=1:500
    for j=1:500
        if i<=100 || i>400
            image_R(i,j)=255;
            image_G(i,j)=255;
            image_B(i,j)=255;
        end
        if j<=100 || j>400
            image_R(i,j)=255;
            image_G(i,j)=255;
            image_B(i,j)=255;
        end
        
        if i>100&&i<=250&&j>100&&j<=250
            image_R(i,j)=55;
            image_G(i,j)=75;
            image_B(i,j)=65;
        end
        
        if i>250&&i<=400&&j>100&&j<=250
            image_R(i,j)=100;
            image_G(i,j)=125;
            image_B(i,j)=0;
        end
        
        if i>250&&i<=400&&j>250&&j<=400
            image_R(i,j)=0;
            image_G(i,j)=0;
            image_B(i,j)=35;
        end
        
        if i>100&&i<=250&&j>250&&j<=400
            image_R(i,j)=75;
            image_G(i,j)=120;
            image_B(i,j)=75;
        end
    end
end

image=zeros(500,500,3);
image(:,:,1)=image_R;
image(:,:,2)=image_G;
image(:,:,3)=image_B;
image=uint8(image);
imshow(image)
imwrite(image,'color.jpg')