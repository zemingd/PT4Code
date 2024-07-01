A, B = gets.split.map(&:to_i)
if A < 6
  p 0
elsif A < 13
  p B / 2
else
  p B
end