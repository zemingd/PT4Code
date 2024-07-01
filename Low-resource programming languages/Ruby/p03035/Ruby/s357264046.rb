A,B = gets.split.map(&:to_i)
if A <= 5
  p 0
elsif A <= 12
  p B/2
else
  p B
end