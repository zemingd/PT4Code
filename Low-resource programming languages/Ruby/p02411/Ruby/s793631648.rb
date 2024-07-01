while line = gets
  break if line == "-1 -1 -1"
  m,f,r = line.split(" ").map(&:to_i)
  if m + f >= 80
    puts "A"
  elsif m + f >= 65
    puts "B"
  elsif m + f >= 50 or (m + f >= 30 and r >= 50) 
    puts "C"
  elsif m + f >= 30
    puts "D"
  else
    puts "F"
  end
end