d, t, s = gets.chomp.split.map(&:to_i)
puts (s * t >= d)? "Yes" : "No"