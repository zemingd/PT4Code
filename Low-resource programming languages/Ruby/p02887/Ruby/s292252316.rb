n = gets.to_i
slims = gets + "1"
 
index = 0
start = 0
delete_num = 0
count = 0
 
while count <= n
  if slims[index] == slims[index+1]
    delete_num += 1
    index += 1
  else
    slims.slice!(start, delete_num)
    index -= delete_num - 1
    start = index
    delete_num = 0
  end

  count += 1
end

puts slims.length - 1