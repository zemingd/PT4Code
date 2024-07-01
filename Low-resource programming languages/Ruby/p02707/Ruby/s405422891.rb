n = gets.to_i
boss_num = gets.split(" ").map(&:to_i)
i = 0
while i <= n-1
  a = boss_num.select{|j| j == i+1}
  puts a.length
  i += 1
end