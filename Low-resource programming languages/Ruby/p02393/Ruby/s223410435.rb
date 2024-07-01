xs = gets.chomp.split(' ').map{|x| x.to_i}.sort!
puts "#{xs[0]} #{xs[1]} #{xs[2]}"