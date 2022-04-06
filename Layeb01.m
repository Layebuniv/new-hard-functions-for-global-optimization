function val = Layeb01(X)

% layeb01 is a unimodal function
% Layeb01([x1, x2...]) 
% The search domain: -100 < x_i < 100
% dim: >=2
% The global minimum is  x_i=1
% fmin =0

% Please report bugs and inquiries to:
% Name   : layeb abdesslem
% E-mail : abdesslem.layeb@univ-constantine2.dz
% Licence: 2-clause BSD (See Licence.txt)

 
s=0;
dim=length(X);
for i=1:dim
    
s=s+100*(abs(exp(((X(i)-1))^2)-1)^0.5) ; %default      
         
end 

val=s;
end