#n = gets.to_i
d, t, s = gets.split.map(&:to_i)

puts (d - t*s) > 0 ? "No" : "Yes"


