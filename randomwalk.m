%randomwalk
nsteps=20;
timepts=1:.1:2;

forwardspeed=.3;
noise=0.8;

stepsize=5;

footposition=0;
for i=2:length(timepts)
footposition(i)=footposition(i-1) + ...
                forwardspeed + ...
                (noise * randn(1, 1));
end

plot(footposition)

