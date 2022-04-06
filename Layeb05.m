function val=Layeb05(x)
% layeb05 (Dome) is a multimodal function
% Layeb05([x1, x2...]) 
% The search domain: -10 < x_i < 10
% dim: >=2
% The global minimum X is alternation of 2kpi and  (2k-1)pi, k is an integer.
% fmin =log(0.001)(n-1)

% Please report bugs and inquiries to:
% Name   : layeb abdesslem
% E-mail : abdesslem.layeb@univ-constantine2.dz
% Licence: 2-clause BSD (See Licence.txt)

cos_rad = @(theta) cosd(theta/pi*180) ;
sin_rad = @(theta) sind(theta/pi*180);

dim = size(x,2) ;
 
s=0;
for i=1:dim-1
   
s=s+(log(abs(sin_rad(x(i)-pi/2)+cos_rad(x(i+1)-pi))+0.001))/(abs(cos_rad(2*x(i)-x(i+1)+pi/2))+1); 

end

 val=s;      
end
    