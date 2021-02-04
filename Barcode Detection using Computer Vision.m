clc;clear;
close all;
camObj = webcam();

% Preview a stream of image frames.
preview(camObj);

while(1)
    img = snapshot(camObj);
    [msg] = readBarcode(img);
    if msg==""
        continue
    else
        disp(msg)
        break
    end
    imshow(img)
    pause(1)
end

