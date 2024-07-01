a,b = gets.split.map(&:to_i)

if a % b == 0
  puts a/b
else
  puts (a/b) +1
end