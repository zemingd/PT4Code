a,b = gets.split.map(&:to_i)

if a == b
  puts a + b
elsif a > b
  puts a * 2 - 1
else
  puts b * 2 - 1
end
