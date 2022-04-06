function val = Layeb18(X)
 
% layeb18 (Zohra)  is a multimodal function
% Layeb18([x1, x2...]) 
% The search domain: -10 < x_i < 10
% dim: >=2
% The global minimum  xi*= (2k-1)pi/2 , k is an integer , k is an integer., k is an integer.
% fmin =log(0.001)(n-1)

% Please report bugs and inquiries to:
% Name   : layeb abdesslem
% E-mail : abdesslem.layeb@univ-constantine2.dz
% Licence: 2-clause BSD (See Licence.txt)

cos_rad = @(theta) cosd(theta/pi*180) ;
sin_rad = @(theta) sind(theta/pi*180);
 
s=0;
dim=length(X);
for i=1:dim-1
   s=s+log(abs(cos_rad(2*X(i+1)*X(i)/pi))+0.001)/(abs(sin_rad(X(i)+X(i+1))*cos_rad(X(i)))+1); %-ones(1,30).*pi*19/6

end

val=s;
end