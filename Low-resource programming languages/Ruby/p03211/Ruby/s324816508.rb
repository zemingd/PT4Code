num = gets.chomp.split('')
puts num.each_cons(3).map{|a| (753-a.join('').to_i).abs}.min