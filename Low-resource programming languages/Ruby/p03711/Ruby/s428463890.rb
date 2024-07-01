require 'set'
groups = [Set[1, 3, 5, 7, 8, 10, 12], Set[4, 6, 9, 11], Set[2]]
x, y = gets.split(' ').map(&:to_i)
x_index = 99
groups.each.with_index do |group, i|
  if group.include?(x)
    x_index = i
    break
  end
end

puts groups[x_index].include?(y) ? 'Yes' : 'No'
  

