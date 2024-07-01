S = gets.chomp

list = %w(SUN MON TUE WED THU FRI SAT).reverse

puts list.index(S) + 1
