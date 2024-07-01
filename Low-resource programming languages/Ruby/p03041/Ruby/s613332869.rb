inputs = Array.new
while line = $stdin.gets
  inputs << line.chomp
end

N, K = inputs[0].split(" ").map(&:to_i)
strs = inputs[1]
strs[K-1] = strs[K - 1].downcase
puts strs
