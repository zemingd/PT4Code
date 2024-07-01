n = gets.to_i
a = gets.strip.split.map(&:to_i)

#ここから累積和
s = Array.new(a.length+1)
s[0] = 0
0.upto(n-1) do |i|
  s[i+1] = s[i] + a[i]
end

h = 10**10
for i in 0..n-2 #0~iまで新井がとる
  if h > (s[n]+s[0]-2*s[i+1]).abs
    h = (s[n]+s[0]-2*s[i+1]).abs
  end
end

puts h