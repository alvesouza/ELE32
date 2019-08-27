function [Resp] = verificaRecepcao(R,P)
    Resp = zeros(size(R,1),size(R,2));
    %quantsAlter = 0;
    %quantsBitAlrados = 0;
    %G = [eye(4), P];
    Ht = [(P)' eye(4)]';
    vec4Zeros = zeros(1,4);
    %vec7Zeros = zeros(1,7);    
    for i = 1:size(R,1)
        %r = R(i,:);
        s = rem(R(i,:)*Ht,2);
        if s == vec4Zeros
            %e = vec7Zeros;
            Resp(i,:) = R(i,:);
        else
            %e = erroMaisProvavel(s,Ht,R(i,:));
            %quantsAlter = quantsAlter + 1;
            %for j = 1:4
            %    if e(j) == 1
            %        quantsBitAlrados = quantsBitAlrados+1;
            %        break;
            %    end
            %end
            
            %Resp(i,:) = xor(erroMaisProvavel(s,Ht,R(i,:)),R(i,:));
            Resp(i,:) = xor(erroMaisProvavel(s,Ht,R(i,:)),R(i,:));
        end
        
    end
    
    %fprintf("%d bits de informa��o foram alterados\n",quantsBitAlrados);
    %fprintf("%d palavras foram alteradas\n",quantsAlter);
end