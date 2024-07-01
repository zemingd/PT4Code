N = gets.to_i

buttons = []

N.times do
  buttons << gets.to_i
end

pos = 0
ans = -1
count = 0
buttons.size.times do
  pos = buttons[pos] - 1
  count += 1
  ans = count if pos == 1
end

puts ans

