n = gets.to_i
ps = gets.split.map(&:to_i)

ans = 0

(1..n-2).each do |i|
  pa = ps[i-1]
  pb = ps[i]
  pc = ps[i+1]
  if pa > pb && pc <= pb || pc > pb && pa <= pb
    ans += 1
  end
end
puts ans