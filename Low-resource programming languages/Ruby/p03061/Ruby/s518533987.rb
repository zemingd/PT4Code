n = gets.to_i
as = gets.split.map(&:to_i)
tmp = Hash.new()
tmp[0] = {l: 0}

as.each.with_index(1) do |a,i|
  break if as[i].nil?
  tmp[i] = {l: tmp[i-1][:l].gcd(as[i-1])}
end

tmp[n-1][:r] = 0
(n-2).downto(0) do |i|
  tmp[i][:r] = tmp[i+1][:r].gcd(as[i+1])
end

ans = 0
n.times do |i|
  gcd = tmp[i][:l].gcd(tmp[i][:r])
  ans = [ans, gcd].max
end

puts ans
