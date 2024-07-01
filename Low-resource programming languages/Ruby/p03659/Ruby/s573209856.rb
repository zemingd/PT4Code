N = gets.to_i
a = gets.chomp.split.map(&:to_i)

m = 0
n = a.inject(&:+)

min_value = Float::INFINITY

(N - 1).times do |i|
  m += a[i]
  n -= a[i]

  min_value = [min_value, (m - n).abs].min
end

puts min_value
