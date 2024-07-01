a,b = gets.split.map(&:to_i)
if a<6
  p 0
elsif a<13
  p b/2
else
  p b
end