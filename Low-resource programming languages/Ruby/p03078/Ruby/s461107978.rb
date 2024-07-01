x, y, z, k = gets.chomp.split.map(&:to_i)
a_arr = gets.chomp.split.map(&:to_i)
b_arr = gets.chomp.split.map(&:to_i)
c_arr = gets.chomp.split.map(&:to_i)

ab_arr = a_arr.product(b_arr).map{ |a,b| a+b }
ab_arr = ab_arr.sort!.reverse!.take(k)

abc_arr = ab_arr.product(c_arr).map{ |ab,c| ab+c }
abc_arr = abc_arr.sort!.reverse!.take(k)

puts(abc_arr.join("\n"))