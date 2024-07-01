X = gets.to_i

a,b = (-200..200).to_a.product((-200..200).to_a).find{|a,b| a**5-b**5 == X}
puts "#{a} #{b}"