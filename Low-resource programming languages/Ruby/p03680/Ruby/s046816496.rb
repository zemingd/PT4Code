n = gets.to_i
buttons = []
n.times do
  buttons.push(gets.to_i)
end
current = 1
count = 0
(n + 1).times do |num|
  if current == 2
    puts count
    exit
  elsif buttons[current - 1] == 0
    puts "-1"
    exit
  end
  count += 1
  current = buttons[current - 1]
  buttons[num] = 0
end