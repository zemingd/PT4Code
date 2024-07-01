n = gets.to_i
a = gets.split.map(&:to_i).sort
ans = true
(n-1).times do |i|
  ans = false if a[i] == a[i+1]
end
puts ans ? "YES" : "NO"
