n = gets.chomp.to_i
a_ary = gets.chomp.split.map(&:to_i)
i = 1

n.times do
  part_ans = a_ary.index(i) + 1
  print part_ans
  print " "
  i += 1
end