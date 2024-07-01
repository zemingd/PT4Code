n, k = gets.split.map(&:to_i)
i = gets.split.map(&:to_i).sort

p i[n-k..-1].inject(:+)