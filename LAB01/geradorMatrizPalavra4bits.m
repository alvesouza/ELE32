function X = geradorMatrizPalavra4bits(X)
y = 1;
tamanho = size(X);
linhas = tamanho(1)
colunas = tamanho(2);
colunasParidade = 3;
matrizParidade = [];
while y <= linhas
    x = 1;
    vetorParidade = [];
    while x <= colunasParidade
        if x == 1
            vetorParidade = [vetorParidade rem(X(y,1)+X(y,2)+X(y,3),2)];
        elseif x == 2
            vetorParidade = [vetorParidade rem(X(y,1)+X(y,3)+X(y,4),2)];
        elseif x == 3
            vetorParidade = [vetorParidade rem(X(y,1)+X(y,2)+X(y,4),2)];
        
        end
        x = x + 1;
    end
    if y == 1
        matrizParidade = vetorParidade;
    else
        matrizParidade = [matrizParidade;vetorParidade];
    end
    
    %matrizParidade = [matrizParidade;vetorParidade]
    
    y = y+1;
end
X = [X matrizParidade];

end