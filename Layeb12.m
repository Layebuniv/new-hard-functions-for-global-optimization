function val = Layeb12(X)
% layeb12 is a multimodal function
% Layeb12([x1, x2...]) 
% The search domain: -5 < xi < 5
% dim: >=2
% The global minimum xi=2
% fmin =-(e+1)(dim-1)
% Please report bugs and inquiries to:
% Name   : layeb abdesslem
% E-mail : abdesslem.layeb@univ-constantine2.dz
% Licence: 2-clause BSD (See Licence.txt)


cos_rad = @(theta) cosd(theta/pi*180) ;

s=0;
dim=length(X);

for i=1:dim-1

 s=s-((cos_rad((X(i)*pi/2-X(i+1)*pi/4-pi/2))*exp(cos_rad(2*pi*X(i+1)*X(i))))+1);   %hard

end

val=s;
end