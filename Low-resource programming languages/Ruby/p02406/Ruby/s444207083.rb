def call(n)
 i=1
 i.upto(n){
  x=i
  if x%3==0 
   print(' ' + i.to_s)
  end
  while x>0
   if x%10==3
    print(' ' + i.to_s)
   end
   x/=10
  end
end
call gets.to_i 