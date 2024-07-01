x, y, z, k = gets.chomp.split.map(&:to_i)
a_arr = gets.chomp.split.map(&:to_i).sort.reverse
b_arr = gets.chomp.split.map(&:to_i).sort.reverse
c_arr = gets.chomp.split.map(&:to_i).sort.reverse

ab_arr = a_arr.product(b_arr).map{ |a,b| a+b }
ab_arr = ab_arr.sort.last(k)

abc_arr = ab_arr.product(c_arr).map{ |ab,c| ab+c }
abc_arr = abc_arr.sort.last(k).reverse

puts(abc_arr.join("\n"))