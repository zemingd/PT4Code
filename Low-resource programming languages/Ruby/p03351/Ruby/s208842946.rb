a,b,c,d = gets.split(" ").map{|v|v.to_i}
direct = (a - c).abs <= d
nd = (a - b).abs <= d && (b - c).abs <= d
puts "#{direct || nd ? "Yes" : "No"}"