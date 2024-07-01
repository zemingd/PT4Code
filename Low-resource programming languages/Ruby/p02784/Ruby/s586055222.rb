hp, _x = gets.split.map(&:to_i)
sum = gets.split.map(&:to_i).inject(:+)

puts hp > sum ? 'No' : 'Yes'
