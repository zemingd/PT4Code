n = gets.to_i
p = gets.split.map(&:to_i)

cnt = 0
min = p[0]
for i in 0..(n-1)
  min = [min, p[i]].min
  cnt += 1 if min >= p[i]
end
puts cnt