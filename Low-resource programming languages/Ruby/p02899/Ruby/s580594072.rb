N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

T = []
A.each.with_index(1) {|t, a| T[t] = a}
puts T[1..-1].join(' ')
