n = gets.to_i
p = gets.split.map(&:to_i)

ans = 0
1.upto(n - 1 - 1) do |i|
  x = [p[i-1], p[i], p[i+1]].sort
  if p[i] == x[1]
    ans += 1
  end
end

puts ans