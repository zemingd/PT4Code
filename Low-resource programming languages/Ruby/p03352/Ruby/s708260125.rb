x = gets.chomp.to_i

i = 2
arr = [1]
while x >= i*i do
  j = i*i
  while x >= j do
    arr.push(j)
    j *= i
  end
  i += 1
end

printf("%d\n",arr.sort[-1])