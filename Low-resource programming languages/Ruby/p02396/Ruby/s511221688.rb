i = 1

while x = gets do
  if x.to_i != 0
    puts "Case #{i}: #{x}"
    i += 1
  else
    break
  end
end