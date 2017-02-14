classdef ENGR391
% This class was written by Joel R. Goodman for ENGR391 - Engineering Enconomics and Project Management.
% These functions are intended for use in the calculations for the
% homework.

    methods (Static)
        
        % Converting to effective annual interest rate. r = nominal rate
        % per interest period, m = number of compounding subperiods per
        % time period.
        function[ effectiveAnnual ] = i_a(r,m)
            effectiveAnnual = (1 + (r/m))^m - 1 ;
        end
        
        % Future given present
        function[ fGivenP ] = FP(P,i,n)
            fGivenP = P * (1 + i)^(n) ;
        end
        
        % Present given future
        function[ pGivenF ] = PF(F,i,n)
            pGivenF = F * (1 + i)^(-n) ;
        end
        
        % Future given annuity
        function[ fGivenA ] = FA(A,i,n)
            fGivenA = A*(((1 + i)^(n) - 1)/i) ;
        end
        
        % Annuity given future
        function[ aGivenF ] = AF(F,i,n)
            aGivenF = F * ((i)/(((1 + i)^(n)) - 1)) ;
        end
        
        % Annuity given present
        function[ aGivenP ] = AP(P,i,n)
            aGivenP = P * ((i*(1 + i)^(n))/((1 + i)^n - 1)) ;
        end
        
        % Present given annuity
        function[ pGivenA ] = PA(A,i,n)
            pGivenA = A * ((i*(1 + i)^(n))/((1 + i)^n - 1))^(-1) ;
        end
        
        % Arithmetic Gradient Uniform Series
        function[ aGivenG ] = AG(G,i,n)
            aGivenG = G * ((1/i) - (n)/((1 + i)^(n) - 1)) ;            
        end
        
        % Arithmetic Gradient Present Worth
        function[ pGivenG ] = PG(G,i,n)
           pGivenG = G * (((1 + i)^n - i*n - 1)/((i^2)*(1 + i)^n)) ; 
        end
        
        % Geometric Gradient Present Worth, i = g
        function[ pgivenAandG ] = PAG1(A,i,n)
           pgivenAandG = A * (n*(1 + i)^(-1)) ;
        end
        
        % Geometric Gradient Present Worth, i ~= g
        function[ pgivenAandG ] = PAG2(A,i,g,n)
           pgivenAandG = A * ((1 - (1 + g)^(n)*(1 + i)^(-n))/(i - g)) ;
        end
        
    end
    
end

