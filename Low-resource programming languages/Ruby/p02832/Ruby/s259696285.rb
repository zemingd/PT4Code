n = gets.to_i
list = gets.split.map(&:to_i)
count = 0
i = 0
while i < list.length do
  k = i + 1
  if list[i] == k
    i += 1
    next
  else
    count += 1
    list.delete_at(i)
  end
end
puts list.length > 0 ? count : -1
