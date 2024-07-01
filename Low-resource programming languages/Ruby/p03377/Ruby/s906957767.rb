a,b,x = gets.split(" ").map{|v| v.to_i}
puts "#{(a <= x && a + b >= x) ? 'YES' : 'NO' }"
