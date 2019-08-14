seed = 10;
numeroBits = 1000000;
bitInformacaoPalavra = 4;
q = 0.5;
p = 0.3;
V = geradorMatrizBits(numeroBits,bitInformacaoPalavra,q,seed);
V = geradorMatrizPalavra4bits(V);
R = geradorMatrizRecebida(V,p,seed);