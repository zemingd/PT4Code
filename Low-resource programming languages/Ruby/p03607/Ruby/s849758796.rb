a=[]
N=gets.chomp.to_i
N.times{
   b=gets.chomp.to_i
   if(a.include?(b))
     a << b
   else
     a.delete(b)
   end
}
puts a.length