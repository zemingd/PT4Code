a, b = gets.split.map(&:to_i)
puts b >= a ? [*1..a].count : [*1..a].count - 1
