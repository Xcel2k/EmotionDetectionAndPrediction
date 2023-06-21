clc 
close all
load("AlexNet.mat")

camera =webcam(1)

  
while true   
    im = camera.snapshot;     
    picture=rgb2gray(im);% Take a picture    
    picture = imresize(picture,[227,227]);
    % Resize the picture
    picture = cat(3, picture, picture, picture);

    label = classify(netTransfer, picture);        % Classify the picture
       %thingSpeakWrite(467220,0,'WriteKey','H5TEVABDP00IFYKM')

    image(im);     % Show the picture
    title(char(label)); % Show the label
    drawnow;   
end