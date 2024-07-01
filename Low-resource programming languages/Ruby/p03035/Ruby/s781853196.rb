a, b = gets.split.map(&:to_i)

if a <= 5
  p 0
elsif a <= 12
  p  b / 2
else
  p b
end