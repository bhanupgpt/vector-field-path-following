close all;clear;clc
% Initialization
chi_inf = pi/2;    %course angle for away from path (rad)
alpha = 1.65;      %positive constant describe the speed of response of course hold autopilot loop (rad/s)
k = 1;      %positive constant influence the rate of the transition
                   
kk = pi/2;      %gain parameter controls the shape of the trajectories.(rad^2/s)
epsi = 0.1;       %width of the transition region around the sliding surface
                    %which is used to reduce chattering in the control.(rad)
w = 0;         %constant current velocity(m/s)


phiw = 0          ;%constant current direction(rad)
Va = 15;        %Longitudinal velocity(m/s)
        

% simulation (Straight line)
x_int = 0;
y_int = 45;
course_int = pi/2;
ang = 0;
endx = 500;
aa = 0;
bb=0;
i=1;
simout=sim('StraightLine');
figure
plot([0 500],[0 0],'--b')
hold on
[vfx,vfy] = meshgrid(0:20:500,-50:20:200);
wx = w*cos(phiw)*ones(size(vfx));
wy = w*sin(phiw)*ones(size(vfy));
quiver(vfx,vfy,wx,wy,0.5,'c','linewidth',0.5)
plot(x.data,y.data,'k','linewidth',2)
quiver(x.data,y.data,vx.data,vy.data,0.2,'r','linewidth',0.5)
title('Straight Line Following trajectory')
legend('Desired path','wind vector','Real UAV path','Velocity')
xlabel('x(m)')
ylabel('y(m)')
grid on
axis([-10 200 -50 50]),axis equal























































