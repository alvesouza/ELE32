function valor = Erros(numeroBits,bitInformacaoPalavra,q,p,seed)
P = [1 1 1 1;1 1 1 0;1 1 0 1; 1 0 1 1; 0 1 1 1; 1 1 0 0;1 0 1 0;1 0 0 1;0 1 1 0; 0 1 0 1;0 0 1 1];
V = geradorMatrizBits(numeroBits,bitInformacaoPalavra,q,seed);
V = geradorMatrizPalavra11bits(V,P);
R = geradorMatrizRecebida(V,p,seed);
%fprintf("Para p = %f\n",p);
Resp = verificaRecepcao(R,P);
%fprintf("FIM\n///////////////////////////\n");

aux = sum(xor(Resp(:,1:11),V(:,1:11)),2);
cont = 0;
for i = 1:size(aux)
    cont = cont + aux(i);
end

valor = cont;

%isequal(R,Resp)
end