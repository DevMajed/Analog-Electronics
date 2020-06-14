function F = CS1(x,VDD,Rin,Av,kn,Vtn,IDmin)
% Determine CS amplifier's resistor values and Q-point.
% Solve system of six equations in six unknowns.
%  The input vector "x" holds the six unknowns:
%  x(1) <-- R1; x(2) <-- R2;   x(3) <-- RD;
%  x(4) <-- RS; x(5) <-- VDSQ; x(6) <-- VGSQ.

% Define parallel resistor function:
Rpara = @(r1,r2) r1*r2/(r1+r2); % Product over sum rule.

F = [-x(2)*VDD/(x(1)+x(2)) + x(6) + (kn/2)*(x(6)-Vtn)^2*x(4) % KVL at GS loop. 
     -VDD + (kn/2)*(x(6)-Vtn)^2*(x(3)+x(4)) + x(5) % KVL at DS loop.
     -Rin + Rpara(x(1),x(2)) % CS amplfier's low-freq input resistance.
     -Av - (kn*(x(6)-Vtn)*x(3))/(1+kn*(x(6)-Vtn)*x(4)) % Voltage gain (7.100) pg. 433.
     -x(4) + 20/(kn*(x(6)-Vtn)) % Set RS = 20/gm for Gain stability.
     -(x(5)-((sqrt(2*VDD*kn*(x(3)+x(4))+1)-1)/(kn*(x(3)+x(4))))) + ...
     ((kn/2)*(x(6)-Vtn)^2-IDmin)*(x(3)+x(4))]; % Maximum symmetrical swing.

end

