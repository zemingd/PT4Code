k = gets.to_i
a, b = gets.split.map(&:to_i)

puts b - a + 1 >= k || (a..b).any?{|it| it % k == 0} ? 'OK' : 'NG'
