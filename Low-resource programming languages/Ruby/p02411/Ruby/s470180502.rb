ARGF.each_line do |line|
  m, f, r = line.split.map(&:to_i)
  
  break if m == -1 && f == -1 && r == -1

  if m == -1 || f == -1
    puts "F"
    next
  end

  m = 0 if m == -1
  f = 0 if f == -1
  sum = m + f
  if sum >= 80
    puts "A"
  elsif sum >= 65
    puts "B"
  elsif sum >= 50
    puts "C"
  elsif sum >= 30 && r >= 50
    puts "C"
  elsif sum >= 30
    puts "D"
  else
    puts "F"
  end
end