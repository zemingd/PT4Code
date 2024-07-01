pre = gets.chomp.split("")
wet = gets.chomp.split("")
cnt = 0
for i in 0..2
  if pre[i] == wet[i]
    cnt += 1
  end
end
puts cnt