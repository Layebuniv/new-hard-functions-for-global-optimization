function val = Layeb07(X)
 
% layeb07 this is a multimodal function
% layeb07([x1, x2]) 
% The search domain: -10 < x_i < 10
% dim: >=2 
% The global minimum at xi*=((2k-1)pi)/2 or xi*=kpi, k is an integer 
% fmin =0.

% Please report bugs and inquiries to:
% Name   : layeb abdesslem
% E-mail : abdesslem.layeb@univ-constantine2.dz
% Licence: 2-clause BSD (See Licence.txt)

cos_rad = @(theta) cosd(theta/pi*180) ;
%sin_rad = @(theta) sind(theta/pi*180);

s=0;
dim=length(X);
for i=1:dim-1
  s=s+(100*abs(cos_rad((X(i)+X(i+1)-pi/2)))^0.1-exp(cos_rad(16*X(i+1)*X(i)/pi))+exp(1)); %default
 
end
val=s;
end