A,B,C = gets.split.map(&:to_i)
result = B / A
if result >= C
  puts C
else
  puts result
end
