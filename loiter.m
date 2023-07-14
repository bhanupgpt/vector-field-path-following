close all;clear;clc
%% Initialization
chi_inf  = pi/2;    %course angle for away from path (rad)
alpha  = 1;      %positive constant describe the speed of response of course
                    %hold autopilot loop (rad/s)
k = 1;      %positive constant influence the rate of the transition from
                    %x_inf to zero, also control the slope of the slope of the
                    %sliding surface near the origin(m^-1)
kk = pi/2;      %gain parameter controls the shape of the trajectories onto
                    %the sliding surface.(rad^2/s)
epsi = 0.1;       %width of the transition region around the sliding surface
                    %which is used to reduce chattering in the control.(rad)
w = 2;         %constant current velocity(m/s)
phiw = pi/4;         %constant current direction(rad)
Va = 15;        %Longitudinal velocity(m/s)
        

% simulation (Orbit following)
cx = 50;
cy = 50;
R=10;
d_int = 15;
course_int = 0; 
j=-1;
gamma_int = pi/4;gamma_end = 4*pi;
simout=sim('OrbitFollowing');
figure
plot(x.data,y.data,'k','linewidth',2)
hold on
quiver(x.data,y.data,vx.data,vy.data,0.2,'r','linewidth',0.5)

t = -pi:0.1:pi;
plot(cx+R*cos(t),cy+R*sin(t),'--b')
[vfx,vfy] = meshgrid(25:10:70,30:10:80);
wx = w*cos(phiw)*ones(size(vfx));
wy = w*sin(phiw)*ones(size(vfy));
quiver(vfx,vfy,wx,wy,0.5,'c','linewidth',0.5)
scatter(cx,cy,'*b')
xlabel('x(m)')
ylabel('y(m)')
axis([25 70 30 80]),axis equal
grid on
legend('Real path','velocity','Desire path','wind vector')
title('Orbit Following trajectory')








































































































