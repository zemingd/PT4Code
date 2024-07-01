a, b = STDIN.gets.split(" ").collect{|x| x.to_i}
puts "#{a/b} #{a%b} #{sprintf('%.5f',a.to_f/b)}"