k = gets.to_i
a, b = gets.split.map &:to_i
puts ((b/k==(a-1)/k) ? :NG : :OK)