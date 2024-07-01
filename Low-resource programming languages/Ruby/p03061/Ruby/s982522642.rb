N = gets.to_i
as = [0] + gets.split.map(&:to_i)

l = Array.new(N+2, 0)
r = Array.new(N+2, 0)


(1..N).each do |i|
    l[i] = l[i-1].gcd(as[i])
end

N.downto(1) do |i|
    r[i] = r[i+1].gcd(as[i])
end

ans = 0
(1..N).each do |i|
  res = l[i-1].gcd(r[i+1])
  ans = res if ans < res
end
puts ans
