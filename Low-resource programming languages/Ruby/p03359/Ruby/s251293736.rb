m, d = gets.split(" ").map{|v|v.to_i}
puts "#{d >= m ? m : m - 1}"