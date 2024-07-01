a = gets.split.map(&:to_i)
a.sort!
puts (a[0]-a[1]).abs+(a[1]-a[2]).abs