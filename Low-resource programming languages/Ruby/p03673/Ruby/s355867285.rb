N = gets.to_i
A = gets.chomp.split(" ").map(&:to_i)

a_o = A.select.with_index{|a, i| i.odd?}
a_e = A.select.with_index{|a, i| i.even?}

puts N.even? ? (a_o.reverse + a_e).join(' ') : (a_e.reverse + a_o).join(' ')
