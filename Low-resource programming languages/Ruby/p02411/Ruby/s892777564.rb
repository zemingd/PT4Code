while true do
  x, y, z = gets.chomp.split(" ").map(&:to_i)
  if x == -1 && y == -1 && z == -1
    break
  end

  sum = x + y
  if sum < 50 && z >= 50
    puts "C"
  elsif x == -1 && z == -1
    puts "F"
  elsif y == -1 && z == -1
    puts "F"
  else
    if sum >= 80
      puts "A"
    elsif sum < 80 && sum >= 65
      puts "B"
    elsif sum < 65 && sum >= 50
      puts "C"
    elsif sum >= 30 && sum < 50
      puts "D"
    else
      puts "F"
    end
  end
end

