n=gets.chomp.to_i
a = 100000
n.times do 
 a=(a*1.05).to_i
 b=a%1000
 if b!= 0
  a = a-b+1000
 end
end
puts a