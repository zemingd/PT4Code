x = gets.chomp.to_i

s, a = x.divmod(11)
s *= 2
if a > 6
  s += 2
elsif a > 0
  s += 1
end
p s
