a, b, c, d = gets.chop.split.map(&:to_i)
while a <= 0 || c <= 0
  a -= d
  c -= b
end
if a <= 0 && c <= 0
  puts "Yes"
elsif a <= 0
  puts "Yes"
else
  puts "No"
end