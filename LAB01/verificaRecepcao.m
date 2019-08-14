function [Resp] = verificaRecepcao(R)
    Resp = zeros(size(R,1),size(R,2));
    P = [1 1 1;1 0 1;1 1 0; 0 1 1];
    %G = [eye(4), P];
    Ht = [(P)' eye(3)]';
    for i = 1:size(R,1)
        r = R(i,:);
        s = r*Ht;
        if s == zeros(1,3)
            e = zeros(1,7);
        else
            e = erroMaisProvavel(s,Ht,r);
        end
        
        Resp(i,:) = xor(e,r);
    end
end