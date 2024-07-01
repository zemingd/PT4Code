n = gets.to_i

m = {}

n.times do
  s = gets.chomp.chars.sort.join
  m[s] ||= 0
  m[s] += 1
end

puts m.each_value.map{|i|i*(i-1)/2}.inject{|s, j| s+j}
  