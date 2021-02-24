function [f] = Equations(t,x)

k1 = 100; k2 = 600; k3 = 150;
% The following sentence will be used

% Set [E] is x(1)
% Set [S] is x(2)
% Set [ES] is x(3)
% Set [P] is x(4)

Eq1 = -k1 * x(1) * x(2) + ( k2 + k3 ) * x(3);
Eq2 = -k1 * x(1) * x(2) + k2 * x(3);
Eq3 = k1 * x(1) * x(2) -( k2 + k3 ) * x(3);
Eq4 = k3 * x(3);
% Corresponding to the four equations mentioned in the first section

f = [Eq1; Eq2; Eq3; Eq4];
% Four differential equations

end

