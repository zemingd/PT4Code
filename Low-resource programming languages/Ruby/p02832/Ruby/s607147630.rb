n = gets.to_i
list = gets.split.map(&:to_i)
count = 0
i = 1
while list.length > 0 do
  pos = list.index(i)
  if i == 1 && pos.nil?
    count = -1
    break
  end
  break if pos.nil?
  if pos == 0
    i += 1
    next
  else
    break if list.length < pos + 1
    list.shift(pos + 1)
    count += pos
    i += 1
  end

end

puts count
