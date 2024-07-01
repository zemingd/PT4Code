h, a = gets.split.map(&:to_i)

count = 0
while true
  h -a
  count += 1
  if h < 0
    return
  end
  break
end

puts count