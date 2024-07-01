i = 1
while
    x = gets.chomp.to_i
    if x > 0
    puts "Case #{i}:#{x}"
    i += 1
  else x == 0
     break
  end
end