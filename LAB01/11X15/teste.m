vecp = [0.5 0.2 0.1];
p = zeros(1,18);
for j = 1:6
    p(3*(j-1)+1) = vecp(1);
    p(3*(j-1)+2) = vecp(2);
    p(3*(j-1)+3) = vecp(3);
    vecp = vecp/10;
end
%p = linspace(0.5,0,10001); 
pb = zeros(1,size(p,2));
seed = 10;
s = rng(seed);
numeroBits = 11*125000;
bitInformacaoPalavra = 11;
q = 0.5;
for i = 1 : size(p,2)
    pb(i) = Erros(numeroBits,bitInformacaoPalavra,q,p(i),randi([0,2^31]))/numeroBits;
    %pb(i) = Erros(numeroBits,bitInformacaoPalavra,q,p(i),randi([0,2^31]));
end
plot(p,pb);