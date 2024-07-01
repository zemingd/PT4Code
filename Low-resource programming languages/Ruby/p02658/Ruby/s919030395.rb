n = gets.to_i
arr = gets.chomp.split(" ").map(&:to_i)
m = 1
i = 0
while i < n
  m *= arr[i]
  if m > 10**18
    m = -1
    break
  end
  i += 1
end
print m