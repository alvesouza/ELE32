p = linspace(0.001,0.5,20);
y = zeros(1,size(p,2));
for i = 1 : size(p,2)
   
    y(i) = Acerto(p(i));
end