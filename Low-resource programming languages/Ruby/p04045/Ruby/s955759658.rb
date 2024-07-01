n, k = gets.split.map(&:to_i)
d = gets.split
puts((1..Float::INFINITY).detect { |i| i >= n && i.to_s.split(//).all? { |c| !d.include?(c) } })