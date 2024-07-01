a, b = gets.split(" ").map(&:to_i)
if a >= 13
  p = b
elsif a>=6 && a<=12
  p = b / 2
else
  p = 0
end
p p
