n,l = gets.chomp.split(' ').map(&:to_i)
arr = []
n.times do
  arr.push(gets.chomp)
end
puts arr.sort.join