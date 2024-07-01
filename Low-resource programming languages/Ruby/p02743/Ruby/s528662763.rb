a,b,c = gets.split.map(&:to_i)
puts (a*128)**0.5+(b*128)**0.5<(c*128)**0.5 ? "Yes" : "No"