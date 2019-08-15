p = linspace(0.5,0,21);
pb = zeros(1,size(p,2));
seed = 10;
s = rng(seed);
numeroBits = 4*10000;
bitInformacaoPalavra = 4;
q = 0.5;
for i = 1 : size(p,2)
    pb(i) = Erros(numeroBits,bitInformacaoPalavra,q,p(i),randi([0,2^31]))/numeroBits;
end
plot(p,pb);