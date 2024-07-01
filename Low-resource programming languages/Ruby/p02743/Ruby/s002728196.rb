a,b,c = gets.split.map(&:to_i)
puts (a*10000)**0.5+(b*10000)**0.5<(c*10000)**0.5 ? "Yes" : "No"