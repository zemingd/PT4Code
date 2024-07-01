A, B = gets.split.map &:to_i
p (if A < 6
  0
elsif A < 13
  B/2
else
  B
end)