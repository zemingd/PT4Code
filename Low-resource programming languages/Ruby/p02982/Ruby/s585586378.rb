n, d = gets.split.map &:to_i
x = []
n.times do
  x << gets.split.map(&:to_i)
end
r = 0
for i in 0...n
  for j in i...n
    next if i == j
    s = 0
    for k in 0...d
      s += (x[j][k] - x[i][k])**2
    end
    s = Math.sqrt(s)
    r += 1 if s.ceil == s.floor
  end
end
p r