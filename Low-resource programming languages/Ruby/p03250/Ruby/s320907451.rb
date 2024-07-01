a = gets.split.map(&:to_i)
a.sort!
arr = []
arr << a[-1]
arr << a[-2]
puts arr.join('').to_i + a[0]