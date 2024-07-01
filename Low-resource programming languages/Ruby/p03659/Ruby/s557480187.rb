n = gets.to_i
as = gets.split.map(&:to_i)
sum_all = as.inject(:+)
current = 0
sum_as = as.map { |num| current += num }
index = (0..(n-1)).bsearch { |i| sum_as[i] >= sum_all / 2 }
min = nil
(index-1..index+1).each do |i|
  next unless i.between?(0, n-2)
  min = [min, (sum_all - 2 * sum_as[i]).abs].compact.min
end
puts min
