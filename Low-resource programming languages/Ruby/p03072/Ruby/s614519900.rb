n = gets.chomp.to_i
h = gets.chomp.split.map(&:to_i)
max = 0
ans = 0
(1..n).each{ |i|
  if h[i-1] >= max
    ans += 1
    max = h[i-1]
  end
}
puts ans