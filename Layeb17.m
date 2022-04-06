function val = Layeb17(X)
% layeb17(Wings) this is a multimodal function
% layeb17([x1, x2]) 
% The search domain: -100 < x_i < 100
% dim: >=2 
% The global minimum is an alternation of -1 and 0
% fmin = 0.
% Please report bugs and inquiries to:
% Name   : layeb abdesslem
% E-mail : abdesslem.layeb@univ-constantine2.dz
% Licence: 2-clause BSD (See Licence.txt)

 
s=0;
dim=length(X);
 
for i=1:dim-1
  
  s=s+1+10*abs(log((X(i)+X(i+1)+2)^2))-1/(abs(1e3*((X(i)^2-X(i+1)-1)))^2+1); %default
      
end
val=s;
end