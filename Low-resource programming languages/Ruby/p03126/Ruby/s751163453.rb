n,m = gets.chomp.split(" ").map(&:to_i)
a = Array.new(n){Array.new}
n.times do |i|
  a[i] = gets.chomp.split(" ").map(&:to_i)
end
cnt = Array.new(m+1,0)
n.times do |i|
  a[i][1..-1].each do |x|
    cnt[x] += 1
  end
end
ans = 0
cnt.each do |x|
  ans += 1 if x == n
end
puts ans
