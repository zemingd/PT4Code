a, b = gets.split.map(&:to_i)
puts a.upto(b).count { |i| i == i.to_s.reverse.to_i }
