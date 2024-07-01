k = gets.to_i
arr = gets.chomp.split(' ')
a = arr[0].to_i
b = arr[1].to_i
out = "NG"
while a <= b
  if a % k == 0
    out = "OK"
    break
  end
  a += 1
end
print out