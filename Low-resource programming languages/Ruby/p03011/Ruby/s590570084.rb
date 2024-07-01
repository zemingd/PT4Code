
a = gets.chomp.split.map(&:to_i)

a.sort!

p a[0..1].inject(:+)