tmp = []
count = 1
while count != 0
  i = gets.chomp
  tmp.push(i)
  count = i.to_i
end
tmp.delete(tmp[-1])
puts(tmp)