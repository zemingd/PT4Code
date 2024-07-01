d,t,s = gets.chomp.split.map(&:to_i)
puts d / s <= t ? "Yes" : "No"