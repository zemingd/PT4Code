(a,b) = gets.chomp.split(" ").map{|x| x.to_i}
puts "#{a * b} #{a * 2 + b * 2}"