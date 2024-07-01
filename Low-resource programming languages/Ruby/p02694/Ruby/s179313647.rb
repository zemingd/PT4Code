x = gets.chomp.to_i

n = Math.log(x/100.to_f ,1.01).ceil

puts n
