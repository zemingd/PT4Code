A,B,C=gets.chomp.split(' ').map{|n| n.to_i}
puts "#{[A*10+B+C,A+B*10+C,A+B+C*10].max}"