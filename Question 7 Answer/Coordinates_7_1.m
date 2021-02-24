[delimiterOut] = importdata('input_coordinates_7_1.txt'); % [delimiterOut] is mean ro let the program detects the input data
coordinates = delimiterOut.data; % What we need is in this structure array, the container named 'data'

total = size(coordinates,1); % Total number of coordinate groups
x1 = coordinates(1:end,1); % Matrix containing the x1 coordinates
x2 = coordinates(1:end,2); % Matrix containing the x2 coordinates
L1 = 50; L2 = 57; % The following sentence will be used

fileID = fopen('output_index_7_1.txt','wt'); % Control the output
fprintf(fileID,'%s\n','index'); % Control the output (Title)

for i = 1:total
    index(i) = L1 * x2(i) + x1(i); % Equation that converts coordinates to the index
    fprintf(fileID,'%u\n',index(i)); % Write the results into the document
end

fclose(fileID); % Finish the control