function e = erroMaisProvavel(s,Ht,r)
   E = eye(7);
   for i = 1:7
       
       x = rem(E(i,:)*Ht,2);
       
       if(isequal(x,s) && isequal(rem(xor(E(i,:),r)*Ht,2),zeros(1,3)))
           e = E(i,:);
       else
           e = zeros(1,7);
       end
       
   end

end