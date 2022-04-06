function val = Layeb06(X)
 
% layeb06 (Infinity) is a multimodal function
% Layeb06([x1, x2...]) 
% The search domain: -10 < x_i < 10
% dim: >=2
% The global minimum X =[(2k-1)pi,(2k-1)pi....], k is an integer.
% fmin =0

% Please report bugs and inquiries to:
% Name   : layeb abdesslem
% E-mail : abdesslem.layeb@univ-constantine2.dz
% Licence: 2-clause BSD (See Licence.txt)
cos_rad = @(theta) cosd(theta/pi*180) ;
sin_rad = @(theta) sind(theta/pi*180);

s=0;
dim=length(X);
for i=1:dim-1
    
s=s+abs(cos_rad((sqrt(X(i)^2+X(i+1)^2)))*sin_rad(X(i+1))+cos_rad(X(i))+1)^0.1; % best sign(-1)*pi value=0end

end
val=s;

end