function val = Layeb20(X)
% layeb20 (noisedlog)  is a function with noise
% Layeb20([x1, x2...]) 
% The search domain: -5 < xi < 5
% dim: >=2
% The global minimum xi=1.
% fmin =0

% Please report bugs and inquiries to:
% Name   : layeb abdesslem
% E-mail : abdesslem.layeb@univ-constantine2.dz
% Licence: 2-clause BSD (See Licence.txt)
 
s=0;
dim=length(X);
 %X=X+shift;
for i=1:dim  
   s=s+ ((rand)^i*(X(i)-1))^2; % with noise
end 

val=s;
end