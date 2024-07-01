pqr = gets.chomp.split(' ').map{|i| i.to_i }

sum = 0
pqr.min(2).each{|i| sum += i }
puts sum
