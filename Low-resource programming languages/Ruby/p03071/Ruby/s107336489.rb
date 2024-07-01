# a
a, b = gets.split.map(&:to_i)

p (if a == 1
  [a, b, b-1].max(2)
elsif b == 1
  [a, a-1, b].max(2)
else
  [a, a-1, b, b-1].max(2)
end).inject(:+)
