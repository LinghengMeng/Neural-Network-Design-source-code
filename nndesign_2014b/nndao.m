function yprime = nndao(t,y)
%NNDAO Calculates derivative for orienting subsystem of ART network
%
%  NNDAO(t,y)
%    t - Current time
%    y - Current output
%  Returns dy.

% Copyright 1994-2015 Martin T. Hagan and Howard B. Demuth
% First Version, 8-31-95.

%==================================================================

global p;
global a;
global A;
global B;

bp = 1;
bn = 1;
e = 0.1;

yprime = (-y + (bp - y)*A*(p(1)+p(2)) - (y + bn)*B*(a(1)+a(2)) )/e;
