n, m = gets.chomp.split.map(&:to_i)

h = gets.chomp.split.map(&:to_i)
h.unshift(0)

t = Array.new(n+1) { Array.new }

m.times do |i|
  a, b = gets.chomp.split.map(&:to_i)
  t[a].push(b)
  t[b].push(a)
end

ans = 0
1.upto(n) do |i|
  if t[i].empty? || h[i] > t[i].map{|m| h[m]}.max
    ans += 1
  end
end
p ans
