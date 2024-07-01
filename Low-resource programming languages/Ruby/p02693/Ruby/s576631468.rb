k = gets.to_i
a, b = gets.split.map &:to_i
if a - b + 1 >= k
  puts :OK
else
  puts :NG
end