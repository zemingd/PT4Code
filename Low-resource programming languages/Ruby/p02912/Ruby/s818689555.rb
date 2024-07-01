n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

a.sort!


m.times do
  a[n-1] = (a[n-1] / 2).floor
  a.sort!
end

puts a.inject(&:+)
