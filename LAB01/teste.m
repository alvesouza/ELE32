p = linspace(0.5,0,11);
pb = zeros(1,size(p,2));
a = 1000000;
for i = 1 : size(p,2)
    pb(i) = Erros(p(i))/a;
end
plot(p,pb);