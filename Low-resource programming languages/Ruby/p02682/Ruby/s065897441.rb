a, b, c, k = gets.split.map(&:to_i)
if k<=a
  p k
elsif k<=(a+b)
  p a
else
  p a-(k-a-b)
end
