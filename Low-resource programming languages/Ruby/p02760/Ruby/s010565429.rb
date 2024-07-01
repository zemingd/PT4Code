lists = []
3.times do
  lists << gets.split.map(&:to_i)
end
flat_lists = lists.flatten
n = gets.to_i
called = []
n.times do
  called << gets.to_i
end
ans_lists = Array.new(9, false)
called.each do |i|
  ans_lists[flat_lists.index(i)] = true if flat_lists.include?(i)
end
bingo_lists = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
ans = 'No'
bingo_lists.each do |ary|
  ans = 'Yes' if ans_lists[ary[0]] && ans_lists[ary[1]] && ans_lists[ary[2]]
end
puts ans
