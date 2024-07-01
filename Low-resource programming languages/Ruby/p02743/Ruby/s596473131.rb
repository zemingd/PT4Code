a, b, c = gets.split.map{|i|i.to_i}
puts (a ** 0.5 + b ** 0.5 < c ** 0.5 ? "Yes" : "No")
