require 'set'

x = gets.split(" ").map(&:to_i)
a = {}
x.each_with_index { |x, i| a[x] = [0, i] }

x = gets.split(" ").map(&:to_i)
x.each_with_index { |x, i| a[x] = [1, i] }

x = gets.split(" ").map(&:to_i)
x.each_with_index { |x, i| a[x] = [2, i] }

n = gets.to_i

res = []
n.times do |i|
  res << a[gets.to_i]
end


bingo_set = [
  [[0, 0], [0, 1], [0, 2]],
  [[1, 0], [1, 1], [1, 2]],
  [[2, 0], [2, 1], [2, 2]],
  [[0, 0], [1, 0], [2, 0]],
  [[0, 1], [1, 1], [2, 1]],
  [[0, 2], [1, 2], [2, 2]],
  [[0, 0], [1, 1], [2, 2]],
  [[0, 2], [1, 1], [2, 0]],
]

ans = false
bingo_set.each do |bingo|
  if Set.new(bingo).subset?(Set.new(res)) then
    ans = true
  end
end

puts ans ? "Yes" : "No"
