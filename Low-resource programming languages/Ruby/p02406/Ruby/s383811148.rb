n = gets.chomp.to_i
num = {}
n.times { num << n if n % 3 == 0 || n % 10 == 3 }
puts " #{ num.join(" ") }