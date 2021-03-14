% Question 1
RGB = imread('wp2005597.jpg');
% figure
% imshow(RGB)
gray = rgb2gray(RGB);
% figure
% imshow(gray)
resized = imresize(gray, [256 256]);
figure
imshow(resized)
% noise = randi([0,255], 256, 256);
% noise = cast(noise, 'uint8');
% figure
% imshow(noise)
% noised_image = resized+noise;
noised_image = imnoise(resized, 'gaussian');
% figure
% imshow(noise)
figure
imshow(noised_image)

% % Question 2
[rows, columns] = size(noise);
sqr = 9;
blurred = conv2(noised_image, ones(sqr)/(sqr^2), 'same');
blurred = cast(blurred, 'uint8');
figure
imshow(blurred)
% blurred = resized - blurred;
% figure
% imshow(blurred)
% blurred = resized + blurred.*0.5;
% figure
% imshow(blurred)