n = gets.to_i
a = gets.split(' ').map(&:to_i)

puts 1.upto(n - 1).map { |i| (a[0, i].inject(0, :+) - a[i, n].inject(0, :+)).abs }.min
