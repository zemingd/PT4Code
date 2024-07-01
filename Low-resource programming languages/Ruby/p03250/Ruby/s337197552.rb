a = gets.split.map(&:to_i)

a.sort!.reverse!

puts 10*a[0] + a[1] + a[2]
