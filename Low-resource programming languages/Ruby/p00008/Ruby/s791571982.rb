count = Array.new(51,0)
0.upto(9){|a| 0.upto(9){|b| 0.upto(9){|c| 0.upto(9){|d| count[a+b+c+d] += 1}}}}

while num = gets.to_i do
  puts count[num]
end