i = 0
loop do
  i += 1
  number = gets.to_i
  if number == 0
    break
  else
    puts "Case #{i}: #{number}"
  end
  #puts "Case #{i}: #{number}"
end