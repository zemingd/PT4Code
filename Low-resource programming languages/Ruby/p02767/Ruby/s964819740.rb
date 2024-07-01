N = gets.to_i
X = gets.split.map(&:to_i).sort

total = []
(X.min..X.max).each do |y|
  t = []
  x.each do |z|
    t << (z - y)**2
  end
  total << t.sum
end

puts total.min