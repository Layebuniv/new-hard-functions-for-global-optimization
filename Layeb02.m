function val = Layeb02(X)

% layeb02 is a unimodal function
% Layeb02([x1, x2...]) 
% The search domain: -100 < x_i < 100
% dim: 30 
% The global minimum is  x_i=1
% fmin =0 .
% Please report bugs and inquiries to:
% Name   : layeb abdesslem
% E-mail : abdesslem.layeb@univ-constantine2.dz
% Licence: 2-clause BSD (See Licence.txt)
 
s=0;
dim=length(X);
 %X=X+shift;
for i=1:dim
s=s+abs(exp(100*(X(i)-1)^2/(exp(X(i))+1))-1); % 
end 

val=s;
end