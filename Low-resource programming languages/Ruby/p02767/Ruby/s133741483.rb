N = gets.chomp.to_i
X = gets.chomp.split(" ").map(&:to_i)

min = Float::INFINITY
(1..100).each do |i|
  sum = 0
  X.each do |x|
    sum += (i - x) ** 2
  end
  min = [min, sum].min
end

puts min