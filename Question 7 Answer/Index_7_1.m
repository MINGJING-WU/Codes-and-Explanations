[delimiterOut] = importdata('input_index_7_1.txt'); % [delimiterOut] is mean ro let the program detects the input data
index = delimiterOut.data; % What we need is in this structure array, the container named 'data'

total = size(index,1); % Total number of coordinate groups
L1 = 50; L2 = 57; % The following sentence will be used

fileID = fopen('output_coordinates_7_1.txt','wt'); % Control the output
fprintf(fileID,'%s\t%s\t\n','x1','x2'); % Control the output (Title)

for i = 1:total
    x1(i) = mod(index(i),L1); % Equation that converts index to x1 coordinate
    x2(i) = fix(index(i)/L1); % Equation that converts index to x2 coordinate
    fprintf(fileID,'%u\t%u\t\n',x1(i),x2(i)); % Write the results into the document
end

fclose(fileID); % Finish the control