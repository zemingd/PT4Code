N, X = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)
dists = (x + [X]).sort.each_cons(2).map do |a, b|
  b - a
end

ans = dists[0]
1.upto(dists.size - 1) do |i|
  ans = ans.gcd(dists[i])
end

puts ans
