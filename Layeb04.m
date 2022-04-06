function val=Layeb04(x)

% layeb04 (Crossfly) is a multimodal function
% Layeb04([x1, x2...]) 
% The search domain: -10 < x_i < 10
% dim: >=2
% The global minimum X is alternation of 0 and  (2k-1)pi, k is an integer.
% fmin =(log(0.001)-1)*(dim-1)

% Please report bugs and inquiries to:
% Name   : layeb abdesslem
% E-mail : abdesslem.layeb@univ-constantine2.dz
% Licence: 2-clause BSD (See Licence.txt)


 cos_rad = @(theta) cosd(theta/pi*180) ;

dim = size(x,2) ;

s=0;
for i=1:dim-1

s=s + log(abs(x(i+1).*x(i))+0.001)+cos_rad(x(i+1)+x(i)); 
 
end

val=s;

end
     