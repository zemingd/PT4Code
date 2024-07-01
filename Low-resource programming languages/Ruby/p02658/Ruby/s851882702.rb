 n = gets.chomp.to_i
 a = gets.chomp.split(' ').map(&:to_i)
 sum = 1
 
 for i in 1..n do
  if(a[i-1] == 0)
   sum = 0
  end
 end
 
 a.each{|num|
   sum *= num
   if(sum > 10 ** 18)
     sum = -1
     break
   end
 }
 
 puts sum
