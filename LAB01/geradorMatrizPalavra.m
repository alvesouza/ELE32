function X = geradorMatrizPalavra(X,seed)
s = rng(seed);
X = randi(logical([0,1]),numeroBits/bitInformacaoPalavra,bitInformacaoPalavra);

end