while line = gets do
  m, f, r = line.split.map(&:to_i)
  if m + f + r == -3 then break end
  if m == -1 || f == -1 || m + f < 30
   puts "F"
  elsif m + f >= 80
    puts "A"
  elsif m + f >= 65
    puts "B"
  elsif m + f >= 50 || (m + f >= 30 && r >= 50)
    puts "C"
  elsif m + f >= 30
    puts "D"
  end 
end