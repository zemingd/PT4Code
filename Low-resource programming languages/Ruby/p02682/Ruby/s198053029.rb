a, b, c, k = gets.split.map(&:to_i)

if k<=a
  puts a
elsif k-a <= b
  puts a
else
  puts a-(k-a-b)
end