x = gets().chomp.to_i

sum = 100
cnt = 0
while(true)
  cnt += 1
  sum = (sum * 1.01).to_i
  if sum >= x
    puts cnt
    exit()
  end
end