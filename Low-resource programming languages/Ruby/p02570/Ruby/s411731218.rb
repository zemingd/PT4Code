#n= gets.to_i
d,t,s = gets.split(" ").map(&:to_f)

puts d / s <= t ? "Yes" : "No"

