n, _, c = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
res = 0
n.times do |_|
  a = gets.chomp.split.map(&:to_i)
  res += 1 if a.zip(b).map {|i, j| i * j }.inject(:+) + c > 0
end
puts res