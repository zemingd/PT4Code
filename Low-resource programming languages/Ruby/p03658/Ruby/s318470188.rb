n, k = gets.split.map(&:to_i)
sticks = gets.split.map(&:to_i).sort.reverse
puts sticks[0, k].inject(:+)
