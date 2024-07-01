loop do
  m, f, r = gets.split.map(&:to_i)
  break if m == -1 && f == -1 && r == -1
  if m == -1 || f == -1
    puts "F"
  else
    if m + f >= 80
      puts "A"
    elsif m + f >= 65
      puts "B"
    elsif m + f >= 50
      puts "C"
    elsif m + f >= 30
      if r >= 50
        puts "C"
      else
        puts "F"
      end
    else
      puts "F"
    end
  end
end