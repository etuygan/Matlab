function Quantization(img, q_bit)

%img = image path -> 'Lena.jpg'
%q_bit = quantization_bit -> (3-bit, 8-bit, 16-bit, ...)

%imread -> gives values in the image
img_data = imread(img);

%iminfo -> gives information of the image
img_info = imfinfo(img);

% 2^bit - 1
currentMaximumValue= 2^img_info.BitDepth - 1;

%2^q_bit -1
newMaximumValue = 2^q_bit - 1;

%convert all values to new values
new_imgdata = img_data * (newMaximumValue/currentMaximumValue);

%print the images
figure,

subplot(1,2,1), imshow(img), title('original image')

subplot(1,2,2), imshow(new_imgdata), title('new image')

end
