% Question 1
RGB = imread('wp2005597.jpg'); % load image to RGB variable

gray = rgb2gray(RGB); % it turns image into gray scale

resized = imresize(gray, [256 256]); % resize the image as 256x256
figure
imshow(resized)
title("Resized Image")

noise = randi([0,255], 256, 256).*0.3; % creates an array with random variable
noise = cast(noise, 'uint8'); % cast noise double to uint8 

noised_image = resized+noise; % adding noise into the image
figure
imshow(noised_image)
title("Noised Image")

% Question 2
[rows, columns] = size(noise); % gets rows and columns
sqr = 3;

% convolve the mask over the image
blurred = conv2(noised_image, ones(sqr)/(sqr^2), 'same'); 
blurred = cast(blurred, 'uint8');
figure
imshow(blurred)
title("Blurred Image")