n = gets.to_i
slims = gets

index = 0
start = 0
delete_num = 0

for i in 0..n-1
  if slims[index] == slims[index+1]
    delete_num += 1
    index += 1
  else
    slims.slice!(start, delete_num)
    index -= delete_num - 1
    start = index
    delete_num = 0
  end
end

puts slims.length