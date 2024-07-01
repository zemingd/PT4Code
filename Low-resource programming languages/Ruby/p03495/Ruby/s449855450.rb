N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
c = A.group_by(&:itself).values.map(&:size).sort
if c.size - K <= 0
  p 0
else
  p c[0, c.size - K].inject(:+)
end
