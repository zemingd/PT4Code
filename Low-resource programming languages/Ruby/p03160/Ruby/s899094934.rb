input = STDIN.read.split("\n").map{|l| l.split(" ").map{|i| i.to_i}}

N = input[0][0]
H = input[1]

INF = 1000000

BAG = {
}

def jump(i)
  if BAG.key?(i)
    return BAG[i]
  end

  if i == 0
    return 0
  end

  cost1 = INF
  cost2 = INF
  if i-1 >= 0
    cost1 = (H[i]-H[i-1]).abs
    cost1 += jump(i-1)
  end
  if i-2 >= 0
    cost2 = (H[i]-H[i-2]).abs
    cost2 += jump(i-2)
  end

  cost = [cost1, cost2].min
  BAG[i] = cost
  return cost
end

for i in 0..N-1 do
  c = jump(i)
end
puts c
