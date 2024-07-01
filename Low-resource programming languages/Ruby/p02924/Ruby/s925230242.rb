inputs = readlines

n = inputs[0].to_i

def solve(n)
  (((n + 1) * n) / 2) - n
end

puts solve(n)

