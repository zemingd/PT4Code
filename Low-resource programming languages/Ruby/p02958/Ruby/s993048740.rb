N = gets.to_i
P = gets.split.map(&:to_i)
c = P.sort.each_with_index.count {|n,i| n != P[i] }
puts c == 0 || c == 2 ? 'YES' : 'NO'
