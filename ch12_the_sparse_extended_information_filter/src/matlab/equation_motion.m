% ==============================================================

% equations of motion model
%written by Pierre-Paul TACHER (ptacher@gmail.com)

%theta: robot orientation
%v: speed 1 
%a: steering 1
%t: time step

%F: discrete motion model advance

% =============================================================
function [ J ] = equation_motion(theta, v, a, t)

    %car parameters
    H=0.74;
    L=2.83;
    a1= 0.95+L; b1=0.5;
    
    v=v/(1-tan(a)*H/L);
    
    J = [ t*(v*cos(theta) - v/L*tan(a)*(a1*sin(theta)+b1*cos(theta)));
          t*(v*sin(theta)+v/L*tan(a)*(a1*cos(theta)-b1*sin(theta)));
          t*v/L*tan(a)];

end