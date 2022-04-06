function val = Layeb08(X)

% layeb08 this is a hard function
%
% layeb08([x1, x2]) 
% The search domain: -10 < x_i < 10
% dim: >=2
% The global minimum is alternation of pi/4,-pi/4 
% fmin = log(0.001)(dim-1);.
% Please report bugs and inquiries to:
% Name   : layeb abdesslem
% E-mail : abdesslem.layeb@univ-constantine2.dz
% Licence: 2-clause BSD (See Licence.txt)

cos_rad = @(theta) cosd(theta/pi*180) ;
 
s=0;
dim=length(X);
for i=1:dim-1
 s=s+abs(100*cos_rad((X(i)-X(i+1))))+log(abs(X(i)+X(i+1))+0.001); %default
end
val=s;
end