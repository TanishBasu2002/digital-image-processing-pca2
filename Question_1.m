original_image = imread('office_4.jpg'); 
gray_image = rgb2gray(original_image);
gray_levels = [128, 64, 32, 16, 8];
figure;
subplot(2, 3, 1);
imshow(gray_image);
title('Original Image');
for i = 1:length(gray_levels)
	num_levels = gray_levels(i);
	quantized_image = uint8(floor(double(gray_image) / 256 * num_levels) * (256 / num_levels));
	subplot(2, 3, i + 1);
	imshow(quantized_image);
	title([num2str(num_levels) ' Gray Levels']);
end
sgtitle('Image Quality with Decreasing Gray Levels');
