a, b, c, d = gets.split.map(&:to_i)
puts ((a - c).abs <= d) || ([(a - b).abs, (b - c).abs].all?{|i| i <= d}) ? :Yes : :No