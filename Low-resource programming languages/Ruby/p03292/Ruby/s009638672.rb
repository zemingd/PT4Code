a = gets.split.map(&:to_i)

a.sort!.reverse!

puts((a[0]-a[1]).abs+(a[1]-a[2]).abs)
