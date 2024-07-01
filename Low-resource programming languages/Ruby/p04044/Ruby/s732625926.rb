n, l = gets.chomp.split(' ').map(&:to_i)
list = []
n.times do
  list << gets.chomp
end
list.sort

print list.join('')