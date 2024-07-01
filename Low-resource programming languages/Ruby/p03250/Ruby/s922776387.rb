a = gets.split(' ').map(&:to_i)
a.sort!.reverse!
puts a.slice(0, a.length - 1).join.to_i + a[a.length - 1]