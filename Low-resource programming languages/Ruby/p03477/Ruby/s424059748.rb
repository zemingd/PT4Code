a,b,c,d=gets.split.map(&:to_i)
if (a+b) > (c+d)
  p "Left"
elsif (a+b) < (c+d)
  p "Right"
else
  p "Balanced"
end