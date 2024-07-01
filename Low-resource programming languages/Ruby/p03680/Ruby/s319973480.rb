n = gets.to_i
buttons = n.times.map {gets.to_i-1}
i = 0
c = 0
while i
  if i == 1
    p c
    exit
  end
  c += 1
  j = i
  i = buttons[i]
  buttons[j] = nil
end
p -1