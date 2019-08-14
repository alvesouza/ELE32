function X = geradorMatrizBits(numeroBits,bitInformacaoPalavra,seed)
s = rng(seed);
X = randi(logical([0,1]),numeroBits/bitInformacaoPalavra,bitInformacaoPalavra);

end