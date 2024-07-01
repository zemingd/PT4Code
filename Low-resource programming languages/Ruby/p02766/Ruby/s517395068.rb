N, K = gets.split.map(&:to_i)

n = 0
while N >= K ** n do
  n += 1
end
p n
