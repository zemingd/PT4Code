n = gets.to_i
as = gets.split.map(&:to_i)
l = {0 => as[0]}
r = {n-1 => as[-1]}

n.times.with_index(1) do |_, i|
  break if as[i].nil?
  l[i] = l[i-1].gcd(as[i])
end

(n-2).downto(0) do |i|
  r[i] = r[i+1].gcd(as[i])
end

ans = 0
n.times do |i|
  if i == 0
    tmp = r[1]
  elsif i == n-1
    tmp = l[n-2]
  else
    tmp = l[i-1].gcd(r[i+1])
  end
  ans = [ans, tmp].max
end

puts ans
