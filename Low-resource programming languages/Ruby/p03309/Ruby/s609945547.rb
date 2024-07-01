n = gets.to_i
as = gets.split.map(&:to_i)
bs = as.each_with_index.map { |a, i| a - i - 1 }.sort!
m = bs[n / 2 - 1]
p bs.map {|b| (b - m).abs }.reduce(0, :+)
