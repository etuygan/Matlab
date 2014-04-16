function BitPlane(img, bit_plane)

%img = image -> 'Lena.jpg'
%bit_plane = eight 1-bit planes -> numbers 1,2,3 .. 8

%plane 1 the lowest order bit
%plane 8 the highest orderer bit

%gives the values of the image
img_data = imread(img);

% returns the bit value at position bit_plane in image
new_imgdata = bitget(img_data,bit_plane);

%show the images
figure,

subplot(1,2,1), imshow(img), title ('The original image');

subplot(1,2,2), imshow(logical(new_imgdata)), title(['Bit plane ' num2str(bit_plane)]);


end

