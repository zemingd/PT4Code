n, q = gets.split.map(&:to_i)
s = gets.chomp
t = Array.new(n, 0)
ans = []
n.times do |i|
  t[i] = t[i-1] + (s[i-1, 2] == 'AC' ? 1 : 0)
  puts t[i]
end
q.times do |i|
  l, r = gets.split.map(&:to_i)
  ans[i] = t[r-1] - t[l-1]
end
puts ans