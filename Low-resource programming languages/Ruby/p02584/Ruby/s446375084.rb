
x, k, d = gets.split.map &:to_i

nearest, mod = x.divmod d
nearest -= k
if nearest <= -2
  nearest = -(nearest % 2)
end
p (nearest * d + mod).abs

