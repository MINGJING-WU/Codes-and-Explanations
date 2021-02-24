polygon = importdata('input_question_6_polygon',' ',0); % ' ' is mean identify column separator as a space
points = importdata('input_question_6_points',' ',0); % 0 is mean read from the beginning of line 0

vert_sum = size(polygon,1); % Total number of vertices in the polygon.
vert_x = polygon(1:end,1); % Matrix containing the x coordinates of the polygon's vertices.
vert_y = polygon(1:end,2); % Matrix containing the y coordinates of the polygon's vertices.

point_x = points(1:end,1); % Matrix containing the x coordinates of the test points.
point_y = points(1:end,2); % Matrix containing the y coordinates of the test points.

fileID = fopen('output_question_6.txt','wt'); % Control the output

for i = 1:vert_sum % The points, which are needed to be determined, are substituted into the algorithm one by one.
    fprintf(fileID,'%u %u %s\n',point_x(i),point_y(i),PNPOLY(vert_sum,vert_x,vert_y,point_x(i),point_y(i))); % Then, the function will write the results into the document
end

fclose(fileID); % Finish the control