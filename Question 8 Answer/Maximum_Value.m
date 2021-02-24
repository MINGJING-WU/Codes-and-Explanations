[t,x]=ode45('Equations',[0,1],[1;10;0;0]);
% Use the ode45() function to solve these four differential functions

k1 = 100; k2 = 600; k3 = 150;
% The following sentence will be used

S = x(:,2);
V = k3 .* x(:,3);
% According to Eq4, d[P]/dt = V = k3 * x(3);

plot(S,V);
% Draw the numerical solution of S and V

% The following sentence is to find the velocity maximum value
% And its corresponding value of S
find = [S,V];
for i = 1:size(find,1)
    if find(i,2) == max(V)
        disp(find(i,1))
        disp(find(i,2))
    end
end