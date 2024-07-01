n,l = gets.chomp.split.map(&:to_i)
s = 0
for i in 0...n
  s += l+i
end
x = 10000000
for i in 0...n
  y = s - (l+i)
  if (s-y).abs < (s-x).abs
    x = y
  end
end
puts x
