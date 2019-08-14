function valor = Erros(p)

seed = 10;
numeroBits = 1000000;
bitInformacaoPalavra = 4;
q = 0.5;
V = geradorMatrizBits(numeroBits,bitInformacaoPalavra,q,seed);
V = geradorMatrizPalavra4bits(V);
R = geradorMatrizRecebida(V,p,seed);

Resp = verificaRecepcao(R);

aux = sum(xor(Resp(:,1:4),V(:,1:4)),2);
cont = 0;
for i = 1:size(aux)
    cont = cont + aux(i);
end


valor = cont;



end