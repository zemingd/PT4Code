n = gets.to_i
x = gets.split.map(&:to_i).sort

total = []
(x.min..x.max).each do |y|
  t = []
  x.each do |z|
    t << (z - y)**2
  end
  total << t.sum
end

puts total.min
