inputs = Array.new
while line = $stdin.gets
  inputs << line.chomp
end
N, K = inputs[0].split(" ").map(&:to_i)
h = inputs[1..-1].map(&:to_i)

sorted = h.sort

i = 0
ans = 1000000000000000000000000000000000
while i <= N - K
  tmp = sorted[i+K-1] - sorted[i]
  ans = tmp if ans > tmp
  i += 1
end

puts ans
