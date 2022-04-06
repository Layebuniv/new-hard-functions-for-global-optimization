function val = Layeb11(X)
% layeb11 this is a hard function
%
% layeb11([x1, x2]) 
% The search domain: -10 < x_i < 10
% dim: >=2
% The global minimum is alternation of  0,-1 
% fmin =  -(dim-1).
% Please report bugs and inquiries to:
% Name   : layeb abdesslem
% E-mail : abdesslem.layeb@univ-constantine2.dz
% Licence: 2-clause BSD (See Licence.txt)

cos_rad = @(theta) cosd(theta/pi*180) ;
%sin_rad = @(theta) sind(theta/pi*180);
%tan_rad=@(theta)sin_rad(theta)/cos_rad(sin_rad);
s=0;
dim=length(X);

for i=1:dim-1
  
s=s+cos_rad((X(i)*X(i+1))+pi)/((100*((X(i)^2-X(i+1)-1)))^2+1); 
   
end

val=s;
end
