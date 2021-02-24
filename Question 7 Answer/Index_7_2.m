[delimiterOut] = importdata('input_index_7_2.txt'); % [delimiterOut] is mean ro let the program detects the input data
index = delimiterOut.data; % What we need is in this structure array, the container named 'data'

total = size(index,1); % Total number of coordinate groups

L1 = 4; L2 = 8; L3 = 5; L4 = 9; L5 = 6; L6 = 7;
% The following sentence will be used

fileID = fopen('output_coordinates_7_2.txt','wt'); % Control the output
fprintf(fileID,'%s\t%s\t%s\t%s\t%s\t%s\t\n','x1','x2','x3','x4','x5','x6'); % Control the output (Title)

for i = 1:total
    
    x6_eq = index(i) / (L1 * L2 * L3 * L4 * L5);
    x6(i) = fix(x6_eq);
    % Equation that converts index to x6 coordinate
    
    x5_eq = (index(i) - L1 * L2 * L3 * L4 * L5 * x6(i)) / (L1 * L2 * L3 * L4);
    x5(i) = fix(x5_eq);
    % Equation that converts index to x6 coordinate
    % Quote the calculation of x6
    
    x4_eq = (index(i) - L1 * L2 * L3 * L4 * L5 * x6(i) ...
        - L1 * L2 * L3 * L4 * x5(i))...
        / (L1 * L2 * L3);
    x4(i) = fix(x4_eq);
    % Equation that converts index to x4 coordinate
    % Quote the calculation of x6 and x5
    
    x3_eq = (index(i) - L1 * L2 * L3 * L4 * L5 * x6(i) ...
        - L1 * L2 * L3 * L4 * x5(i)...
        - L1 * L2 * L3 * x4(i))...
        / (L1 * L2);
    x3(i) = fix(x3_eq);
    % Equation that converts index to x3 coordinate
    % Quote the calculation of x6, x5, and x4
    
    x2_eq = (index(i) - L1 * L2 * L3 * L4 * L5 * x6(i) ...
        - L1 * L2 * L3 * L4 * x5(i) ...
        - L1 * L2 * L3 * x4(i) ...
        - L1 * L2 * x3(i)) ...
        / L1;
    x2(i) = fix(x2_eq);
    % Equation that converts index to x2 coordinate
    % Quote the calculation of x6, x5, x4, and x3
    
    x1_eq = (index(i) - L1 * L2 * L3 * L4 * L5 * x6(i) ...
        - L1 * L2 * L3 * L4 * x5(i) ...
        - L1 * L2 * L3 * x4(i) ...
        - L1 * L2 * x3(i) ...
        - L1 * x2(i)); ...
        x1(i) = mod(x1_eq,L1);
    % Equation that converts index to x2 coordinate
    % Quote the calculation of x6, x5, x4, x3, and x2
    
    
    fprintf(fileID,'%u\t%u\t%u\t%u\t%u\t%u\t\n',x1(i),x2(i),x3(i),x4(i),x5(i),x6(i));
    % Write the results into the document
end

fclose(fileID); % Finish the control