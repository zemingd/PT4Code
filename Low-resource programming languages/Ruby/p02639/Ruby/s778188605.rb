a = gets.split(' ').map(&:to_i)
res = a.find_index { |n| n == 0 }
p res + 1