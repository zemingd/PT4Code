#ユークリッドの互除法っぽい？？
n = gets.to_i
a = gets.strip.split.map(&:to_i)
h = a[0]
for i in 1..n-1
  h = h.gcd(a[i])
end
puts h