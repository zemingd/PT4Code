a,b,c = gets.split.map(&:to_i)
afford = a - b
rest = c - afford
if c >= afford
  p rest
else
  p 0
end