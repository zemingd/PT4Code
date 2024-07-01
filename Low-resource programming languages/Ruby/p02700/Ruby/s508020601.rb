a, b, c, d = gets.chomp.split(" ").map(&:to_i)
while a <= 0 || c <= 0
  c = c - b
  if c <= 0
    puts "Yes"
  end
  a = a - d
  if a <= 0
    puts "No"
  end
end
