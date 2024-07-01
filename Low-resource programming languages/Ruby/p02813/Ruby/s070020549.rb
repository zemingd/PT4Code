n = gets.to_i
index_of = (1..n).to_a.permutation(n).map{|it| it.join('')}.sort.each_with_index.to_h{|it, i| [it, i]}

a = gets.chomp.split.join('')
b = gets.chomp.split.join('')
puts (index_of[a] - index_of[b]).abs
