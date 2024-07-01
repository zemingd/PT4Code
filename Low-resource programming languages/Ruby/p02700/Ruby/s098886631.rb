a, b, c, d= gets.chomp.split(" ").map(&:to_i)
while a <= 0 || c <= 0
  b = k
  d = j
  c = c - k
  if c <= 0
    puts "Yes"
  end
  a = a - j
  if a <= 0
    puts "No"
  end
end
