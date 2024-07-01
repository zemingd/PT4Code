n = gets.to_i
buttons = readlines.map(&:to_i)
target = 0
count = 1
flag = false
while count <= n
  if buttons[target] == 2
    puts count
    flag = true
    break
  else
    target = buttons[target] - 1
    count += 1
  end
end
puts '-1' unless flag
