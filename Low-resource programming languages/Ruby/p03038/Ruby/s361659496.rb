N, M = gets.split(' ').map(&:to_i)
a = gets.split(' ').map(&:to_i)

M.times do |i|
  quantity, item = gets.split(' ').map(&:to_i)
  a.push([item] * quantity)
end

puts a.flatten.sort.reverse[0, N].inject(:+)