a = gets.split.map &:to_i

a = a.sort.reverse

puts a[0] * 10 + a[1] + a[2]
