while i<10001
    i = i + 1;
    h = i + 250
    if h > 10001
        h = 10001;
    end
    parfor j = i : h
        %i = j;
        pb(j) = Erros(numeroBits,bitInformacaoPalavra,q,p(j),randi([0,2^31]))/numeroBits;
        %pb(i) = Erros(numeroBits,bitInformacaoPalavra,q,p(i),randi([0,2^31]));
    end
    i = h;
end
%plot(p,pb);