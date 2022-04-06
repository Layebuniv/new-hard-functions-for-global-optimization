function val = Layeb15(X)
  % layeb15  is a multimodal function
% Layeb15([x1, x2...]) 
% The search domain: -100 < x_i < 100
% dim: >=2
% The global minimum X is alternation of is an alternation of -1 and 1.
% fmin =0

% Please report bugs and inquiries to:
% Name   : layeb abdesslem
% E-mail : abdesslem.layeb@univ-constantine2.dz
% Licence: 2-clause BSD (See Licence.txt)
s=0;
dim=length(X);
 for i=1:dim-1
     
     s=s+10*abs(tanh((2*abs(X(i))-X(i+1)^2-1)))^0.5+ abs(exp(X(i+1)*X(i)+1)-1);  %very good

end
val=s;
end