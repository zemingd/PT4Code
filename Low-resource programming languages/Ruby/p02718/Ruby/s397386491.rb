n, m = gets.split("\s").map(&:to_i)
a = gets.split("\s").map(&:to_i)

sum = a.inject(:+)
populars = a.find_all { |i| i * 4 * m >= sum }.size
puts populars >= m ? 'Yes' : 'No'