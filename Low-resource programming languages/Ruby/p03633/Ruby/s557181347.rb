N = gets.to_i
pre = 1
N.times do
  pre = pre.lcm(gets.to_i)
end
puts pre