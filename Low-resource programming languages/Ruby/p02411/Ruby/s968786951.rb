while (m, f, r = gets.split(" ").map(&:to_i)) != [-1, -1, -1]
  if m == -1 or f == -1
    puts "F"
  elsif m + f > 79
    puts "A"
  elsif m + f > 64
    puts "B"
  elsif m + f > 49
    puts "C"
  elsif m + f > 29 and r > 49
    puts "C"
  elsif m + f > 29
    puts "D"
  else
    puts "F"
  end
end

