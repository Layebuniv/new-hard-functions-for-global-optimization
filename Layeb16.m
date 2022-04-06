function val = Layeb16(X)
 
% layeb16 (Marmar)  is a multimodal function
% Layeb16([x1, x2...]) 
% The search domain: -10 < xi < 10
% dim: >=2
% The global minimum  is xi*= pi/4  or  xi*= -pi/4
% fmin =0

% Please report bugs and inquiries to:
% Name   : layeb abdesslem
% E-mail : abdesslem.layeb@univ-constantine2.dz
% Licence: 2-clause BSD (See Licence.txt)
cos_rad = @(theta) cosd(theta/pi*180) ;
sin_rad = @(theta) sind(theta/pi*180);
tan_rad=@(theta) sind(theta/pi*180)/cosd(theta/pi*180);

s=0;
dim=length(X);
for i=1:dim-1
   s=s+(abs(tan_rad(X(i+1))*X(i)+100*abs(cos_rad(X(i))^2-sin_rad(X(i+1))^2)-pi/4))^0.2;
end

val=s;

end