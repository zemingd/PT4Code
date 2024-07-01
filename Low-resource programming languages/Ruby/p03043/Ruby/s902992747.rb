n,k = gets.split.map(&:to_i)

ans = 0
# tail = [n,k-1].min
(1..n).each do |i|
  if i >= k
    ans += 1.0/n
  else
    c = (Math.log2(k/i.to_f)).ceil
    ans += 1.0/(n * (2**c))
  end
end

puts ans