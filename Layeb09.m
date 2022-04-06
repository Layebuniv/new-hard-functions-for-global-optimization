function val=Layeb09(x)
 
% layeb09 this is a hard function
%
% layeb09([x1, x2]) 
% The search domain: -10 < x_i < 10
% dim: >=2 
% The global minimum is xi=(2k-1)pi/2
% fmin = 0.
% Please report bugs and inquiries to:
% Name   : layeb abdesslem
% E-mail : abdesslem.layeb@univ-constantine2.dz
% Licence: 2-clause BSD (See Licence.txt)

cos_rad = @(theta) cosd(theta/pi*180) ;
sin_rad = @(theta) sind(theta/pi*180);

dim = size(x,2) ;

 
s=0;

for i=1:dim-1

s=s  +abs(((exp(abs(x(i+1)*sin_rad(x(i)))-abs(x(i+1))))+(cos_rad(x(i)+x(i+1))))/exp(cos_rad((x(i)+x(i+1)))-1))^0.5; %  hard ^0.1   -1.6285
end

val=s;    
end