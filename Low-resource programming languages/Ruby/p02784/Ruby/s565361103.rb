h,a = gets.split(" ").map(&:to_i)
f = gets.split(" ").map(&:to_i)

puts (f.sum >= h ? "Yes" : "No")