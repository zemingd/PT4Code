i = 0
while true
  i += 1
  number = gets.to_i
  if number != 0
    puts "Case #{i}: #{number}"
  else
    break
  end
end