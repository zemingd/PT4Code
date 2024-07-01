input = gets.split(" ")
r = Array.new(3)
r[0] = input[0].to_i
r[1] = input[1].to_i
r[2] = input[2].to_i
r.sort!
puts r[0].to_s + " " + r[1].to_s + " " + r[2].to_s