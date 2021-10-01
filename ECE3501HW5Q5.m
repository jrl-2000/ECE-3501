clc

clear

If = [0 0.5 1.0 1.5 2.0 2.5];

Ea = [0 75 150 205 242 270];

Ra = 0.095;

RI = 2;

Ifield = linspace(0,2.5,100);

for n = 1:100

Ea_curve(n) = spline(If, Ea, Ifield(n));

la(n) = Ea_curve(n)/2.095;

Vt(n) = Ea_curve(n)-la(n)*Ra;

Pload(n) = Ea_curve(n)*la(n);

end

plot(Ifield, Vt)

title ('Field current vs. Terminal voltage')

xlabel('Field current [A]')

ylabel('Terminal voltage [V]')