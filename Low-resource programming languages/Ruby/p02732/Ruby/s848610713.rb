N, *A = $DEFAULT_INPUT.read.split.map(&:to_i)
B = [0] * (N + 1)
A.each do |a|
  B[a] += 1
end
C = B.inject(0) do |c, b|
  c + b * (b - 1) / 2
end
A.each do |a|
  b = B[a]
  p C + 1 - b
end