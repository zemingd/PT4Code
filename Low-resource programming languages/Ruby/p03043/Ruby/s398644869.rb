n, k = gets.chomp.split.map(&:to_i)

ans = 0.0
(1..n).each do |i|
  p = [Math.log2(k.quo(i)).ceil, 0].max
  ans += 1.0 / (n * 2**p)
end

puts(ans)