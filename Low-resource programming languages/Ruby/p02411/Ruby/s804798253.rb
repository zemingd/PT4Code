loop {
  m, f, r = gets.split ("  ").map(&:to_i)
  if m == -1 && f == -1 && r == -1
    break
  end
  if m == -1 || f == -1
    puts "F"
  elsif m+f >= 80
    puts "A"
  elsif m+f >= 65 && m+f < 80
    puts "B"
  elsif m+f >= 50 && m+f < 65
    puts "C"
  elsif m+f >= 30 && m+f < 50
    if r >= 50
      puts "C"
    else
      puts "D"
    end
  else
    puts "F"
  end
}