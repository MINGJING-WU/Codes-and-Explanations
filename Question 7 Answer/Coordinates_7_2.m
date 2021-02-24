[delimiterOut] = importdata('input_coordinates_7_2.txt'); % [delimiterOut] is mean ro let the program detects the input data
coordinates = delimiterOut.data; % What we need is in this structure array, the container named 'data'

total = size(coordinates,1); % Total number of coordinate groups
x1 = coordinates(1:end,1); % Matrix containing the x1 coordinates
x2 = coordinates(1:end,2); % Matrix containing the x2 coordinates
x3 = coordinates(1:end,3); % Matrix containing the x3 coordinates
x4 = coordinates(1:end,4); % Matrix containing the x4 coordinates
x5 = coordinates(1:end,5); % Matrix containing the x5 coordinates
x6 = coordinates(1:end,6); % Matrix containing the x6 coordinates

L1 = 4; L2 = 8; L3 = 5; L4 = 9; L5 = 6; L6 = 7;
% The following sentence will be used

fileID = fopen('output_index_7_2.txt','wt');  % Control the output
fprintf(fileID,'%s\n','index'); % Control the output (Title)

for i = 1:total
    
    index(i) = L1 * L2 * L3 * L4 * L5 * x6(i) ...
        + L1 * L2 * L3 * L4 * x5(i) ...
        + L1 * L2 * L3 * x4(i) ...
        + L1 * L2 * x3(i) ...
        + L1 * x2(i) ...
        + x1(i);
    % Equation that converts coordinates to the index
    fprintf(fileID,'%u\n',index(i)); % Write the results into the document
    
end

fclose(fileID); % Finish the control