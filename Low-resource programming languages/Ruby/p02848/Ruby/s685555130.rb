N = gets.to_i
as = gets.chomp
a = [*'A'..'Z']

puts as.tr(a.join, a.rotate(N).join)