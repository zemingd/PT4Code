n = gets.to_i
as = gets.chomp.split.map(&:to_i)
as.map!.with_index(1) do |a, i|
  a - i
end
as.sort!
b = as.size % 2 == 0 ? as[as.size / 2 - 1, 2].inject(:+) / 2 : as[as.size / 2]
as.map! do |a|
  (a - b).abs
end
puts as.inject(:+)