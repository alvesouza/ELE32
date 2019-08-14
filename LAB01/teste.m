p = linspace(0.5,0,20);
pb = zeros(1,size(p,2));
seed = 10;
numeroBits = 1000000;
bitInformacaoPalavra = 4;
q = 0.5;
for i = 1 : size(p,2)
    pb(i) = Erros(numeroBits,bitInformacaoPalavra,q,p(i),seed)/numeroBits;
end
plot(p,pb);