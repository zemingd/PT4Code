X, Y = gets.split.take(2).map(&:to_i)

a = [[1,3,5,7,8,12],[4,6,9,11],[2]]

puts a.index{|b|b.include?(X)} == a.index{|b|b.include?(Y)} ? :Yes : :No
