_, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).uniq.map { |x| x / 2 }
x = a.inject(&:lcm)

unless a.all? { |i| (x / i).even? }
  puts 0
  exit 0
end

count = (m >= x ? 1 : 0) + (m - x) / (2 * x)
puts count < 0 ? 0 : count
