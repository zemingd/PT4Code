a, b = gets.chop.split.map(&:to_i)
if a == b
  puts a
elsif a > b
  puts a-1
else
  puts a
end