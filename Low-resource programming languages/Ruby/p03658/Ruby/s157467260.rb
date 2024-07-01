n, k = gets.split.map(&:to_i)
sticks = gets.split.map(&:to_i).sort { |a, b| b <=> a}
puts sticks[0, k].inject(:+)
