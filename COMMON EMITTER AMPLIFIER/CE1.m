function F = CE1(x,VCC,Rin,Av,Beta,alpha,VCEmin,ICmin,VBEon,VT)
% Determine CE amplifier's resistor values and Q-point.
% Solve system of six equations in six unknowns.
%  The input vector "x" holds the six unknowns:
%  x(1) <-- R1; x(2) <-- R2;   x(3) <-- RC;
%  x(4) <-- RE; x(5) <-- VCEQ; x(6) <-- ICQ.

% Define parallel resistor function:
Rpara = @(r1,r2) r1*r2/(r1+r2); % Product over sum rule.

F = [-x(2)*VCC/(x(1)+x(2)) + x(6)*Rpara(x(1),x(2))/Beta + VBEon + x(6)*x(4)/alpha % KVL at BE loop. 
     -VCC + x(6)*x(3) + x(5) + x(6)*x(4)/alpha % KVL at CE loop.
     -Rin + Rpara((1+Beta)*(alpha*VT/x(6)+x(4)),Rpara(x(1),x(2))) % CE amplfier's input resistance.
     -Av - alpha*x(3)/(alpha*VT/x(6)+x(4)) % Voltage gain (7.109) pg. 436.
     -Rpara(x(1),x(2)) + 0.1*(1+Beta)*x(4) % Set RThev = 0.1(1+Beta)RE for Q-point stability; (7.145) pg. 462.
     -(x(5)-VCEmin) + (x(6)-ICmin)*(x(3) + x(4)/alpha)]; % Maximum symmetrical swing.

end

