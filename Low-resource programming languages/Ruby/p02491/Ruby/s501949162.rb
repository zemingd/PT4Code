a, b = gets.split(" ").map{|i|i.to_i}
puts [a / b, a % b, a.to_f / b].join(" ")