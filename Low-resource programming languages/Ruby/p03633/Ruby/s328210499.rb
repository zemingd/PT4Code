require "rational"
n = gets.chomp.to_i
ans = 1
n.times do 
  ans = ans.lcm(gets.chomp.to_i)
end
p ans