function val = Layeb03(X)
 
 
% layeb03 (arcleggtable) is a multimodal function
% layeb03([x1, x2....]) 
% The search domain: -10 < x_i < 10
% dim: >=2
% The global minimum is  xi= k*pi  k is a relative integer
% fmin = -dim+1.

% Please report bugs and inquiries to:
% Name   : layeb abdesslem
% E-mail : abdesslem.layeb@univ-constantine2.dz
% Licence: 2-clause BSD (See Licence.txt)

sin_rad = @(theta) sind(theta/pi*180);
s=0;
dim=length(X);
for i=1:dim-1
    
s=s-1/((abs(exp(abs(100-(sqrt(X(i)^2+X(i+1)^2)/pi)))*sin_rad(X(i))+sin_rad(X(i+1)))+1)^0.1);

end
val=s;
end