n = gets.to_i
boss_num = gets.split(" ").map(&:to_i)
i = 0
while i <= n-1
  puts boss_num.count(i+1)
  i += 1
end