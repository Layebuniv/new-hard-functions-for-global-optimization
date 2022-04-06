function val = Layeb13(X)
% layeb13  is a multimodal function
% Layeb13([x1, x2...]) 
% The search domain: -10 < x_i < 10
% dim: >=2
% The global minimum X is alternation of is an alternation of (2k+1)pi/4,–(2k+1)pi/4, k is an integer., k is an integer.
% fmin =0

% Please report bugs and inquiries to:
% Name   : layeb abdesslem
% E-mail : abdesslem.layeb@univ-constantine2.dz
% Licence: 2-clause BSD (See Licence.txt)

cos_rad = @(theta) cosd(theta/pi*180) ;

s=0;
dim=length(X);

for i=1:dim-1
    s=s+abs(cos_rad(X(i)-X(i+1)))+100*abs(log(abs(X(i)+X(i+1))+1))^0.1;  % 2 degrees high
end
val=s;
end