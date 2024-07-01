d,t,s = gets.chomp.split.map(&:to_i)

min = d/s.to_f

puts min <= t ? "Yes" : "No"