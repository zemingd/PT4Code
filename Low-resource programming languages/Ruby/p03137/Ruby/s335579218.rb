n, m = gets.split.map(&:to_i)
X = gets.split.map(&:to_i)

sorted = X.sort

diff = []
sorted.each_with_index do |x, i|
  next if i == 0

  diff[i - 1] = (sorted[i] - sorted[i - 1]).abs
end

sorted_diff = diff.sort.reverse

if n >= m
  puts 0
else
  (n - 1).times do
    sorted_diff.shift
  end

  p sorted_diff.reduce(:+)
end
