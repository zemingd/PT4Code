L = gets.split.map(&:to_i)
B = L[0].times.map { gets.to_i }
n = L[0]
T = [0, 1, 2, 3]
S = Array.new(n - 1){ T }

m = T.product(*S).map do |types|
  h = n.times.group_by{|i| types[i] }
  unless (1 .. 3).all?{|g| h[g] }
    100_000_000
  else
    (1 .. 3).map do |g|
      t = h[g].map{|i| B[i]}
      (t.inject(0,&:+) - L[g]).abs + 10 * (t.size - 1)
    end.inject(0, &:+)
  end
end.min
puts m
