N, W = gets.chomp.split.map(&:to_i)

weights = []
values  = []

N.times do
  weight, value = gets.chomp.split.map(&:to_i)

  weights << weight
  values  << value
end

dp = Array.new(W + 1, 0)

1.upto(N) do |i|
  cw = weights[i - 1]
  cv = values[i - 1]

  W.downto(1) do |w|
    next if w - cw < 0

    nv = dp[w - cw] + cv

    next if nv <= dp[w]

    dp[w] = nv
  end
end

print dp[W]
