function X = geradorMatrizBits(numeroBits,bitInformacaoPalavra,q,seed)
s = rng(seed);
linhas = numeroBits/bitInformacaoPalavra;
colunas = bitInformacaoPalavra;
X = [];
y = 1;
while y <= linhas
    x = 1;
    vetor = [];
    while x <= colunas
        if rand <= q
            vetor = [vetor 1];
        else
            vetor = [vetor 0];
        end
        x = x + 1;
    end
    vetor = logical(vetor);
    X = [X; vetor];
    y = y+1;
end

end