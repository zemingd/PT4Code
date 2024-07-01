N, K = gets.split.map(&:to_i)
V = gets.split.map(&:to_i)

ans = 0
0.upto(K) do |l|
  0.upto(K) do |r|
    rest_k = K - l - r
    break if rest_k < 0 || l + r > N

    v = V[0, l] + V[-r, r]
    vol = v.inject(0, :+)
    vol -= v.reject { |g| g > 0 }.sort[0, rest_k].inject(0, :+)

    ans = vol if ans < vol
  end
end

puts ans