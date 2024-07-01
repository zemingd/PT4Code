h = gets.to_i
a = gets.to_i
count = 1
while h < 0
  h = h - a
  count += count
  if h < 0
    puts count
  end
end