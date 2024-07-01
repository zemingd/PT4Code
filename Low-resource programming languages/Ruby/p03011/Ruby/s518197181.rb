times = gets.split.map(&:to_i)
ans = times.min(2).inject(:+)
puts ans