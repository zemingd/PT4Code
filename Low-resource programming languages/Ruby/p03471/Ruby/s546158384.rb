N,y = gets.chomp.split.map(&:to_i)

itiman = 0
gosen = 0
sen = 0

itiman = y / 10000
y = y % 10000
gosen = y / 5000
y = y % 5000
sen = y / 1000
y = y % 1000

puts y == 0 ? "#{itiman} #{gosen} #{sen}" : "-1 -1 -1"