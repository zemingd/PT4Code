noNeed,N = gets.split.map(&:to_i)
L = gets.split.map(&:to_i).sort{|a, b| -(a <=> b)}
puts(L.first(N).inject(:+))