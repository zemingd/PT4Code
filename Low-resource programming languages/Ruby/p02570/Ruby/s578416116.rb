d,t,s = gets.chomp.split.map(&:to_i)
puts d / s.to_f <= t ? "Yes" : "No"