n = gets.to_i
a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)
destroy_num_all = 0

n.times do |i|
  # 1つ目の街で討伐
  destroy_num = [a[i], b[i]].min
  b[i] -= destroy_num
  # a[i] -= destroy_num
  destroy_num_all += destroy_num

  # 2つ目の街で討伐
  destroy_num = [a[i + 1], b[i]].min
  # b[i] -= destroy_num
  a[i + 1] -= destroy_num
  destroy_num_all += destroy_num
end

puts destroy_num_all
