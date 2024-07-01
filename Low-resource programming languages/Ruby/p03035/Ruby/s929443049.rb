a,b = gets.split.map(&:to_i)
if a >= 13
  p b
elsif a <= 5
  p 0  
else
  p b/2
end