a, b, c, d = gets.chomp.split.map &:to_i
max = [a, c].max
min = [b, d].min
if max <= min
  ans = min - max
elsif max > min
  ans = 0
end
puts ans
