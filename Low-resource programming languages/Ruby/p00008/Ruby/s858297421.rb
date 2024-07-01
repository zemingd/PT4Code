count = Array.new(51,0)
10.times {|a| 10.times{|b| 10.times{|c| 10.times{|d| count[a+b+c+d] += 1}}}}

while num = gets.to_i
  puts count[num]
end