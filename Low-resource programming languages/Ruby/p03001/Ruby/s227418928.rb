W, H, x, y = gets.split(" ").map(&:to_i)
puts "#{W*H/2.0}" + " " + (W/x.to_f == 2 && H/y.to_f == 2?  "1" : "0")
