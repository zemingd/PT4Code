d,t,s = gets.split.map(&:to_i)
puts (d / s.to_f) - t <= 0 ? "Yes" : "No"
