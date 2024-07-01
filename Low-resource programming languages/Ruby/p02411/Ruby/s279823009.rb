while line = gets
  data = line.split().map{|e|e.to_i}
  break if data[0] == -1 && data[1] == -1 && data[2] == -1
  sum = data[0] + data[1]
  if sum < 30 ||  data[0] == -1 || data[1] == -1
    puts "F"
  elsif sum >= 80
    puts "A"
  elsif sum >= 65
    puts "B"
  elsif sum >= 50
    puts "C"
  else
    if data[2] >= 50
      puts "C"
    else
      puts "D"
    end
  end
end