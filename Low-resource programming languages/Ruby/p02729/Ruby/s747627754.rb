a, b = gets.split(" ").map(&:to_i)

ary_a = []
a.times do |i|
  ary_a << i 
end

ary_b = []
b.times do |i|
  ary_b << i 
end

p_a = ary_a.combination(2).to_a
p_b = ary_b.combination(2).to_a

puts p_a.size + p_b.size
