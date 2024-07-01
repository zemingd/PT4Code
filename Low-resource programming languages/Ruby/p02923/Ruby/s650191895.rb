n = gets.to_i
hs = gets.split(" ").map(&:to_i)

move = 0
max = 0

for i in 1..hs.count-1
  if hs[i-1] >= hs[i]
    move += 1
    max = move if max < move
  else
    move = 0
  end
end
p max