function e = erroMaisProvavel(s,Ht,r)
   E = eye(7);
   vec3Zeros = zeros(1,3);
   vec7Zeros = zeros(1,7);   
   for i = 1:7
       
       x = rem(E(i,:)*Ht,2);
       
       if(isequal(x,s) && isequal(rem(xor(E(i,:),r)*Ht,2),vec3Zeros))
           e = E(i,:);
       else
           e = vec7Zeros;
       end
       
   end

end