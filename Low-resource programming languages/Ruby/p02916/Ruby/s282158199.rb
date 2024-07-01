n = gets.to_i
a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)
c = gets.split(" ").map(&:to_i)
ans = b[a[0]-1]
1.upto(n-1) do |i|
  ans += b[a[i]-1]
  ans += c[a[i]-2] if a[i] == a[i-1] + 1
end
puts ans