[t,x]=ode45('Equations',[0,1],[1;10;0;0]);
% Use the ode45() function to solve these four differential functions

plot(t,x);
axis([0,0.6,-0.5,10.5]);
% Draw the numerical solution of these four differential functions

fileID = fopen('output_question_8_2.txt','wt'); % Control the output

fprintf(fileID,'%s %s %s %s %s\n','x1','x2','x3','x4','t');
% Control the output (Title)
fprintf(fileID,'%7.5f %7.5f %7.5f %7.5f %7.5f\n',[t,x]');
% Write the results into the document

fclose(fileID); % Finish the control
