n,k = gets.split(" ").map(&:to_i)
tmp = n
count = 1
while(true)
  tmp = tmp/k
  if tmp < k
    puts count+1
    break
  end
  count += 1
end