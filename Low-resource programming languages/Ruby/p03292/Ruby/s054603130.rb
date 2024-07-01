a = gets.split.map(&:to_i)
puts a.sort![-1] - a[0]