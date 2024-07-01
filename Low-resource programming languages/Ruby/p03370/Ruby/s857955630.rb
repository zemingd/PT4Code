N, X = gets.split.map(&:to_i)
m = []
gram = X
num = 0

N.times do
  tmp = gets.to_i
  m << tmp
  gram = gram - tmp
  num += 1
end
m.sort!

while (gram - m[0])> 0 do
  gram = gram - m[0]
  num += 1
end
puts num