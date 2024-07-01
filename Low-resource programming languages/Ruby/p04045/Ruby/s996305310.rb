n, k = gets.split.map(&:to_i)
MAX = 10000
d = gets.split
puts((0..MAX).detect { |i| (n <= i) && i.to_s.split(//).all? { |c| !d.include?(c) } })