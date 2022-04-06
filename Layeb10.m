function val = Layeb10(X)

% layeb10 this is a multimodal function
%
% layeb10([x1, x2]) 
% The search domain: -100 < x_i < 100
% dim: >=2 
% The global minimum is xi=0.5 
% fmin = 0.
% Please report bugs and inquiries to:
% Name   : layeb abdesslem
% E-mail : abdesslem.layeb@univ-constantine2.dz
% Licence: 2-clause BSD (See Licence.txt)

sin_rad = @(theta) sind(theta/pi*180);

s=0;
dim=length(X);
 
for i=1:dim-1
    s=s+abs(100*sin_rad((X(i)-X(i+1))))+(log(X(i)^2+X(i+1)^2+0.5))^2; % default 
   
end
val=s;
end