n, m = gets.split.map(&:to_i)
xs = gets.split.map(&:to_i).sort

if n > m
  puts 0
  exit
end
diffs = (xs.size - 1).times.map { |i| xs[i + 1] - xs[i] }.sort
puts diffs[0..-n].inject(&:+)
