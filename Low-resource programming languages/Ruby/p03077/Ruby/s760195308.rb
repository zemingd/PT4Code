N = gets.to_i
a = []
5.times do |i|
  a[i] = gets.to_i
end

s = []
s = s.fill(0,0..5)
s[0] = N
ans = 0
5.times do |i|
  # puts "i=#{i}"
  # puts "#{s}"
  x = (s[i].to_f / a[i].to_f).ceil
  ans += x
  s[i+1] = (s[i] >= a[i]) ? a[i] : s[i]
end
puts ans
