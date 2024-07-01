N = gets.to_i
P = gets.chomp.split(" ").map(&:to_i)

c = 0
P.each_with_index{|p, i| c += 1 if p != i + 1}

puts c < 3 ? 'YES' : 'NO'
