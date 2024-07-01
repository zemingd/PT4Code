d, t, s = gets.chomp.split.map(&:to_i)
puts t >= d / s + (d % s == 0 ? 0 : 1) ? "Yes" : "No"