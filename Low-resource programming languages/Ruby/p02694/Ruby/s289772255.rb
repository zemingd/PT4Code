X = gets.to_i
x = 100
i = 1
while true
  x = (x * 1.01).floor
  if x >= X
    puts i
    break
  end
  i += 1
end