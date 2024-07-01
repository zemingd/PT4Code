n, k = gets.chomp.split.map(&:to_i)

ans = 0
1.upto(n) do |i|
  if n >= k
    ans += 1.0/n
  else
    ans += (1.0/n) * ((0.5) ** (Math.log2(k.to_f/i).ceil))
  end
end
p ans
