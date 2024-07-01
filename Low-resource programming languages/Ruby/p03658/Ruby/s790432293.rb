n, k = gets.split.map(&:to_i)
sticks = gets.split.take(n).map(&:to_i)

puts sticks.sort.last(k).inject(:+)
