arr = gets.chomp.split(' ')
a = arr[0].to_i
b = arr[1].to_i
c = arr[2].to_i
d = arr[3].to_i

while true
  turn = 'Yes'
  c = c - b
  if c <= 0
    break
  end

  turn = 'No'
  a = a - d
  if a <= 0
    break
  end

end

print turn
