n = gets.to_i
a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)
c = gets.split(" ").map(&:to_i)

ans = 0
a.each.with_index do |n, i|
  ans += b[n-1]
  if i > 0 && a[i] - a[i-1] == 1
    ans += c[a[i]-2]
  end
end
p ans