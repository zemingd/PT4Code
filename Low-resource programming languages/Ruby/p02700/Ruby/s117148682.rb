a, b, c, d = gets.chomp.split(" ").map(&:to_i)
 while 
c = c - b
  if c <= 0
    puts "Yes"
    break
  end
  a = a - d
  if a <= 0
    puts "No"
    break
  end
end
