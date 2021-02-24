function [result] = PNPOLY(vert_sum,vert_x,vert_y,testpoint_x,testpoint_y)

result = 0;

for i = 1:vert_sum
    
    j = i-1; % These steps are to control j is always equal to i ¨C 1
    % But if i = 0 (j = 0), let j = nvert ¨C 1
    
    if j == 0
        j = vert_sum; 
    end
    
    % The above steps simulate the connection of each point of the polygon, that is, simulate the formation of the edge, so as to prepare for the PNPOLY
    
    if ( ( testpoint_y > vert_y(i) ) ~= ( testpoint_y > vert_y(j) ) ) ...
            && ( ( testpoint_x - vert_x(i) ) < ( vert_x(j) - vert_x(i) ) ...
            * ( testpoint_y - vert_y(i) ) / ( vert_y(j) - vert_y(i) ) )
        result = ~result; % The core code of the PNPOLY
    end
    
end

% According to the PNPOLY so as to estimate the test point results
if result == 1
    result = 'inside';
else
    result = 'outside';
end

end

