n, k = gets.split.map(&:to_i)
MAX = 10000
d = gets.split
puts((1..MAX).detect { |i| (n <= i) && !d.any? { |c| i.to_s.split(//).include?(c) } })