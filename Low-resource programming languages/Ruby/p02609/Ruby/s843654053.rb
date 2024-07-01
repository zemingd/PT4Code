require "openssl"

n = gets.to_i
x = gets.chomp

# 最初のpopcount
cnt1 = x.count '1'
y = x.to_i(2)

# 2e5以内のpopcount (16bit)
def popcount(a)
  (0..15).sum { |i| a >> i & 1 }
end

def f(x)
  if x == 0
    0
  else
    f(x % popcount(x)) + 1
  end
end

add = 1
# 逆順に求める
result = n.times.map do |i|
  z = y
  cnt2 = cnt1
  cnt = 0
  if x[n-i-1] == '0'
    cnt2 += 1
    z = (z + add)
  else
    cnt2 -= 1
    z = (z - add)
  end
  cnt = 1 if z != 0
  z %= cnt2
  
  cnt += f(z)
  
  add *= 2
  
  cnt
end

result.reverse_each { |x| p x }