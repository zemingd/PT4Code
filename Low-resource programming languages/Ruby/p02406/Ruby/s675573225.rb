n = gets.chomp.to_i
num = []
(1..n).each {|i| num << i if i % 3 == 0 || i % 10 == 3 }
puts " #{ num.join(" ") }"