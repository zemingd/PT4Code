N = gets.to_i
A = gets.chomp.split(" ").map(&:to_i)

a_o = A.select{|a| a.odd?}
a_e = A.select{|a| a.even?}

puts N.even? ? (a_e.reverse + a_o).join(' ') : (a_o.reverse + a_e).join(' ')
