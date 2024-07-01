n = gets.chomp.to_i
a_ary = gets.chomp.split.map(&:to_i)
i = 1
ans = []

n.times do
  if a_ary.include?(i)
    part_ans = a_ary.index(i) + 1
    ans.push(part_ans)
  end
  i += 1
end

print ans.join(' ')
