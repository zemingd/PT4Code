n = gets.to_i
as = gets.chomp.split.map(&:to_i).sort
num_lcm = 1
as.each do |a|
  num_lcm = a.lcm(num_lcm)
end
ans = 0
as.each do|a|
  ans += (num_lcm - 1) % a
end
puts ans