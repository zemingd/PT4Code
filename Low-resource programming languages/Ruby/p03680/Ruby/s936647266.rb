n = gets.to_i
buttons = []
n.times do
  buttons.push(gets.to_i)
end
current_p = 1
next_p = 0
count = 0
(n + 1).times do
  if current_p == 2
    puts count
    exit
  elsif current_p == 0
    puts "-1"
    exit
  end
  count += 1
  next_p = buttons[current_p - 1]
  buttons[current_p - 1] = 0
  current_p = next_p
end