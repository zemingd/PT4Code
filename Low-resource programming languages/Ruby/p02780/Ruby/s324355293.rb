n,k = gets.chomp.split(" ").map(&:to_i)
p = gets.chomp.split(" ").map(&:to_f)

kitaichi = 0.0
for i in 0..n-k
  kitai_kari = 0.0
  k.times{ |x|
    param = p[i+x]
    x_kitai = (param * (param+1.0) / 2.0) / param
    kitai_kari += x_kitai
   }
   if kitaichi < kitai_kari
     kitaichi = kitai_kari
   end
 end

 puts kitaichi