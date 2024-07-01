n = gets.to_i
a = [*1..n].permutation.map { |n| n.join('') }

p = gets.split.map(&:to_i).join('')
q = gets.split.map(&:to_i).join('')

puts (a.find_index(p) - a.find_index(q)).abs