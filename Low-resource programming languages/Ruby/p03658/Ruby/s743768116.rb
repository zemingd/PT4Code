_n,k = gets.split.map &:to_i
longs = gets.split.map(&:to_i).sort.reverse
puts longs[0..k-1].inject(:+)