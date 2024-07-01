n = gets.to_i
N = gets.strip.to_s
ary = N.split("").map(&:to_s)
ka = []
ary.each do |x|
  if x=="E"
    ka << 0
  else
    ka << 1
  end
end
#累積和かな？
s = Array.new(n+1)
s[0] = 0
0.upto(n-1) do |i|
  s[i+1] = s[i] + ka[i]
end
#これで完了
#ここまでO(N)、このままO(N)だといけるはず
h = n
i = 1 #西から何人目？
while i <= n do
  c = n-i-s[n]+s[i]+s[i-1]
  if h > c
    h = c
  end
  i += 1
end
puts h