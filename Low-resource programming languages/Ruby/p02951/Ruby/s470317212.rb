A, B, C = gets.split.map(&:to_i)


r =  C - (A - B)
if r > 0
  puts r
else
  puts 0
end