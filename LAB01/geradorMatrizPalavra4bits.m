function X = geradorMatrizPalavra4bits(X,seed)
s = rng(seed);
y = 1;
tamanho = size(X);
linhas = tamanho(1)
colunas = tamanho(2);
colunasParidade = 3;
matrizParidade = [];
soma = logical(0);
while y <= linhas
    x = 1;
    vetorParidade = [];
    while x <= colunasParidade
        if x == 1
            vetorParidade = [vetorParidade xor(xor(X(y,1),X(y,2)),X(y,3))];
        elseif x == 2
            vetorParidade = [vetorParidade xor(xor(X(y,1),X(y,3)),X(y,4))];
        elseif x == 3
            vetorParidade = [vetorParidade xor(xor(X(y,1),X(y,2)),X(y,4))];
        
        end
        x = x + 1;
    end
    if y == 1
        matrizParidade = vetorParidade
    else
        matrizParidade = [matrizParidade;vetorParidade]
    end
    
    %matrizParidade = [matrizParidade;vetorParidade]
    
    y = y+1;
end
X = [X matrizParidade]

end