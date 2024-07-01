a, b, c, k = gets.split.map &:to_i

sum = [a, k].min
k -= a
if (k -= b) > 0
  sum -= [c, k].min
end
p sum