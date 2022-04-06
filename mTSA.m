% modified Tangent Search Algorithm mTSA
%
%Please report bugs and inquiries to:
% Name   : layeb abdesslem
% E-mail : abdesslem.layeb@univ-constantine2.dz
%
clc;
clear;
%layebfnunresults=zeros(20,34); % save results
%addpath('./layeb_benchmark');
Runs=1; % nbr of runs
 optimums30d=[0	0	-29	-229.324	-200.329	0	0	-200.324	0	0	-29	-107.830	0	0	0	0	0	-200.324	0	0]; %30d
%optimum10d= [ 0	0	-9	-71.169     -62.169 	0	0  -62.169	   0	0	-9	-33.464 	0	0	0	0	0	-62.169 	0	0]; %10d

for nfun=11:11
    %---------------test function parameters------------------
    func = callFunction(nfun);  %get the function struct for [1...50] functions
    fun =str2func( func.name);   % function to be optimized
    %fun =str2func(strcat(func.name ,'_mex'));   % mex function for speed
    dim =func.dim; %dimension of the problem
    lb =  func.lowerlimit; %lower limit of the problem
    ub = func.upperlimit; %upper limit of the problem
    
    fprintf('\n-------------------------------------------------------\n')
    fprintf('Function = %s, Dimension size = %d\n', func.name, dim)
    for nbex=1:Runs %
rng('shuffle')        
      %----------------STO paramaters
        nbr_agent=40;       %population size
        FES=0;
        MAX_FES=10000;   % maximum number of function evaluation
        
      %--------------------------------
        pop=struct('fitness',{},'position',{}); % initialization of population
        %fitness_pop=zeros(1,nbr_agent);
              
        for i=1:nbr_agent
            X=lb+(ub-lb).*rand(1,dim);    % generate a new solution X
            % fitness=feval(fun,X',nfun);
            fitness=fun(X);
            pop(i).position=X;
            pop(i).fitness=fitness;
            % fitness_pop(i)=fitness;
            FES=FES+1;
            
            if i==1
                Bestagent=pop(1);
            end
            
            if pop(i).fitness< Bestagent.fitness
                Bestagent=pop(i);
                Bestagent.fitness=pop(i).fitness;
            end
            
        end
        
     %%---------------- begin  iterations 
        while FES<=MAX_FES    % iteration process  
            if  FES>MAX_FES
                break;
            end
       
            
            for j=1:nbr_agent
                optx=Bestagent.position;
                X=pop(j).position;
          
                
      %--------------------exploration phase---------------
              
                    for jk=1:dim
                     
                        teta=rand*pi/2.5;               
                        id=randi(dim);    
                        if rand<=1.5/dim  || jk==id %1.5/dim best
                            
                            if isequal (optx,X)
                                step=0.1*sign(rand-0.5)/log(1+FES);
                                X(jk)=X(jk)+step*(tan(teta));
                            else
                               
                                step=0.5*sign(rand-0.5)*norm(optx-X);
                                
                                if rand <=0.3
                                    X(jk)=X(jk)+tan(rand*(pi));% large tangent flight
                                else
                                    X(jk)=X(jk)+step*(tan(teta)); % small tangent flight
                                    
                                end
                                    
                            end
                            
                        end
                    end
                    
             %------- bounds checking
                Xnew=X;
                Xnew(Xnew>ub)=rand*(ub - lb) + lb;
                Xnew(Xnew<lb)=rand*(ub - lb) + lb;
             %----------evaluation and best solution update

                fitness= fun(Xnew);
                % fitness= feval(fun,Xnew',nfun);
                if  fitness <pop(j).fitness
                    pop(j).position  =Xnew ;
                    pop(j).fitness=fitness;
                   if  fitness< Bestagent.fitness
                    Bestagent.position=Xnew;
                    Bestagent.fitness=fitness ;  
                   end
                end
                FES= FES+1;           
                if  FES>MAX_FES
                    break;
                end
                
    %---------------------end exploration phase---------------------
                
     %-------------------- intensification search---------------------
               
                if   (rand<0.7 && FES >=0.5*MAX_FES) ||  (rand<0.05)  % 0.2 for test 3
                   
                    X=pop(j).position;
                    B=X;
                    teta=rand*pi/2.5;
                    step = 1*sign(rand-0.5)*norm(optx)*log(1+10*dim/FES);         
                    if isequal(optx, X)
                        X=optx+step.*(tan(teta)).*(rand*optx-X);
                    else
                        if rand <=0.7
                            X=optx+step.*(tan(teta)).*(optx-X); 
                        else
                            sign1 = -1+(1-(-1)).*rand();
                            ro = 15*sign1*1/log(1+FES); 
                            X = X + ro.*(optx-rand*(optx-X)) ;      
                        end
                        
                    end
                   
                    ind=find(rand(1,dim)<=0.2);
                      if isempty(ind)
                      ind=randi(dim);
                      X(ind)=B(ind); 
                      else
                       X(ind)=B(ind); 
                      end
                    
               %----bounds checking   
                Xnew=X;
                Xnew(Xnew>ub)=rand*(ub - lb) + lb;
                Xnew(Xnew<lb)=rand*(ub - lb) + lb;
                %----------evaluation and best solution update
                fitness= fun(Xnew);
                % fitness= feval(fun,Xnew',nfun);
                if  fitness <pop(j).fitness
                    pop(j).position  =Xnew ;
                    pop(j).fitness=fitness;
                   if  fitness< Bestagent.fitness
                    Bestagent.position=Xnew;
                    Bestagent.fitness=fitness ;  
                   end
                end
                FES= FES+1;           
                if  FES>MAX_FES
                    break;
                end
                end
   %--------------------- end intensification phase-------------------
          
   %------------------escape local minimma-----------------------------
                if rand <0.01 %default0.01
                    X=pop(j).position;
                    B=X;
                    teta=rand*pi; %randn
                    X =  X + tan(teta).*(ub-lb); % generate a random solution by tangent flight         
                    Xnew=X;
              %------- bounds checking
                    if rand <=0.8
                        Xnew(Xnew>ub)=rand*(ub - lb) + lb;
                        Xnew(Xnew<lb)=rand*(ub - lb) + lb;
                    else
                        Xnew(Xnew>ub)=((rand*(ub - lb) + lb)+B(Xnew>ub))/2;
                        Xnew(Xnew<lb)=(rand*(ub - lb) + lb+B(Xnew<lb))/2;
                    end
                    
                %----------evaluation and best solution update
                fitness= fun(Xnew);
                % fitness= feval(fun,Xnew',nfun);
                if  fitness <pop(j).fitness
                    pop(j).position  =Xnew ;
                    pop(j).fitness=fitness;
                   if  fitness< Bestagent.fitness
                    Bestagent.position=Xnew;
                    Bestagent.fitness=fitness ;  
                   end
                end
                FES= FES+1;           
                if  FES>MAX_FES
                    break;
                end
                
                end
                
                
                
            end%j
            
            
            
            
        end%while
        
        
        %fprintf(' Valopt = %d, fun=  %s, nbex=  %d  \n ',Bestagent.fitness,func.name,nbex)
        fprintf(' error = %d, fun=  %s, nbex=  %d  \n ',Bestagent.fitness-optimums30d(nfun),func.name,nbex)

        %layebfnunresults(nfun,nbex)=Besttrochoid.fitness-optimum30d(nfun);
        %layebfnunresults(nfun,nbex)=Bestagent.fitness;
        % MTE(nfun,nbex)=Besttrochoid.fitness-optimum(nfun)+ norm(globalbest-optx);
    end
end
% for i=20:20
%     layebfnunresults(i,31)=(mean(layebfnunresults(i,1:30)));
%     layebfnunresults(i,32)=std(layebfnunresults(i,1:30));
%     layebfnunresults(i,33)=min(layebfnunresults(i,1:30));
%     layebfnunresults(i,34)=max(layebfnunresults(i,1:30));
% end
% 
% xlswrite('results.xlsx',layebfnunresults,1)
