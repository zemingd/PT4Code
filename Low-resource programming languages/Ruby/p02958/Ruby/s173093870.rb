n = gets.to_i
p = gets.split.map(&:to_i)
r = 'NO'
s = []

1.upto(n) do |i|
  if i != p[i - 1]
    s.push([i, p[i - 1]])
  end
end
p s
if s.length == 2
  if s[0][1] == s[1][0] &&
     s[1][0] == s[0][1]
    r = 'YES'
  end
end

puts r
