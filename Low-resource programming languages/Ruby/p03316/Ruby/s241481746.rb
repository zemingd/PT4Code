x = gets

divider = 0
x.split("").map { |i| divider += i.to_i }

mod = x.to_i % divider
puts (mod == 0 ? "Yes" : "No")
