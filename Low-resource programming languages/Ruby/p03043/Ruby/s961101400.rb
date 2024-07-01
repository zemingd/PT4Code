n, k = gets.split.map(&:to_i)

ans = 0

(1..n).each do |i|
  rate = 0
  while i < k
    rate += 1
    i *= 2
  end
  ans += 1.quo(n * 2**rate)
end

puts ans.to_f