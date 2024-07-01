N = gets.to_i
W = gets.chomp.split(' ').map(&:to_i)
total = W.reduce(:+)
sums = W.reduce([]) do |acc, n|
  acc + [acc.last.to_i + n]
end
puts sums.map { |n| ((total - n) - n).abs }.min
