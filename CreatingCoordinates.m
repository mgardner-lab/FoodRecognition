% This code may be used to generate a number of coordinates within an image
% where the coordinate locations are randomly distributed among the pixels
% categorized by a certain label (e.g., food)
%
% CITATION: Paper Under Review. Please contact code author, Michael Gardner
% by email at: mgardner@kfu.edu.sa or gardner.lab@proton.me
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% First, load the imds file (example used throughout: imdsTest)
load imdsTest.mat %use your own

disp('Choose directory location for saving coordinates files:')
pathnameCOORDS = uigetdir(); % Opens a UI to select a directory for saving coordinates

for i=1:length(imdsTest.Files) % Loop over each file in the imdsTest dataset

    % Read the current image
    img = imread(imdsTest.Files{i}); % Reads the image file
    [mask, score] = semanticseg(img, net); % Performs semantic segmentation on the image
    foodscore = score.*(mask == 'food'); % Calculates the score for the 'food' class
    newMask = mask == 'food'; % Creates a binary mask for the 'food' class
    
    % Save coordinates (method: FM halftoning)
    thresh = 0.75; % Threshold for FM halftoning
    coords_m2 = myFMhalftone(foodscore, thresh); % Calls the FM halftoning function
    [hc, wc] = size(coords_m2); % Gets the size of the coordinates matrix
    desiredSamples=105; %(number can be adjusted HERE)
    if hc > desiredSamples % If there are more than 105 coordinates (number can be adjusted ABOVE)
        xlab = [1:hc]; % Create an index array
        rsx = randsample(xlab, desiredSamples); % Randomly sample 105 indices (number can be adjusted ABOVE)
        subsel_coords_m2 = coords_m2(rsx, :); % Select the sampled coordinates
        clearvars coords_m2 % Clear the original coordinates matrix
        coords_m2 = subsel_coords_m2; % Update the coordinates matrix with the sampled coordinates
    end
    
    % Construct the filename for saving the coordinates
    filenameCOORDS = strcat('COORDS_', name, '.txt'); % Concatenates strings to create the filename
    writematrix(coords_m2, fullfile(pathnameCOORDS, filenameCOORDS)); % Writes the coordinates to a text file

end

% Function definition for FM halftoning
function [coords] = myFMhalftone(foodscore, thresh)
    [h, w, d] = size(foodscore); % Get the dimensions of the foodscore matrix
    randthresh = rand(h, w); % Generate a random threshold matrix
    [coords(:, 1), coords(:, 2)] = find(randthresh .* foodscore > thresh); % Find coordinates where the condition is met
end
