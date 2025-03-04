function [Ne_u,Ne_theta,Ne_w] = N_Mindlin_func(in1,in2,in3,in4,in5)
%N_Mindlin_func
%    [Ne_u,Ne_theta,Ne_w] = N_Mindlin_func(IN1,IN2,IN3,IN4,IN5)

%    This function was generated by the Symbolic Math Toolbox version 23.2.
%    20-Feb-2024 14:04:07

xi1 = in1(1,:);
xi2 = in1(2,:);
t2 = xi2+1.0;
t3 = xi2-1.0;
t4 = xi1./4.0;
t5 = t4+1.0./4.0;
t6 = t4-1.0./4.0;
t7 = t2.*t5;
t8 = t2.*t6;
t9 = t3.*t5;
t10 = t3.*t6;
t11 = -t8;
t12 = -t9;
Ne_u = reshape([t10,0.0,0.0,t10,t12,0.0,0.0,t12,t7,0.0,0.0,t7,t11,0.0,0.0,t11],[2,8]);
if nargout > 1
    Ne_theta = reshape([t10,0.0,0.0,t10,t12,0.0,0.0,t12,t7,0.0,0.0,t7,t11,0.0,0.0,t11],[2,8]);
end
if nargout > 2
    Ne_w = [t10,t12,t7,t11];
end
end
