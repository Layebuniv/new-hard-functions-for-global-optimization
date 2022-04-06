   function val = Layeb14(X)
% layeb14  is a multimodal function
% Layeb14([x1, x2...]) 
% The search domain: -100 < x_i < 100
% dim: >=2
% The global minimum X is alternation of is an alternation of 0,-1 
% fmin =0

% Please report bugs and inquiries to:
% Name   : layeb abdesslem
% E-mail : abdesslem.layeb@univ-constantine2.dz
% Licence: 2-clause BSD (See Licence.txt)

s=0;
dim=length(X);
for i=1:dim-1
   
s=s+abs(log((X(i)+X(i+1)+2)^2))+100*abs((X(i)^2-X(i+1)-1))^0.1; % default
 
end
val=s ;

end