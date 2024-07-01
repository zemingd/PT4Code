input = STDIN.read.split("\n").map{|l| l.split(" ").map{|i| i.to_i}}

N = input[0][0]
H = input[1]

BAG = {}

def jump(i = 0)
  if BAG.key?(i)
    return BAG[i]
  end
  if i == N - 1
    c = 0
    BAG[i] = c
    return c
  end
  cost = jump(i + 1)
  to_next = (H[i] - H[i + 1]).abs

  if i == N - 2
    return cost + to_next
  end

  cost_two = jump(i + 2)
  to_next_two = (H[i] - H[i + 2]).abs
  c = [(cost + to_next), (cost_two + to_next_two)].min
  BAG[i] = c
  return c
end

c = 0
(0..(N - 1)).reverse_each { |i|
  c = jump(i)
}
puts c
