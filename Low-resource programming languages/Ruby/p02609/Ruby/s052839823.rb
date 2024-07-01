n = gets.to_i
x = gets.to_i(2)

def popcount(x)
  # 2bitごとの組に分け、立っているビット数を2bitで表現する
  x = x - ((x >> 1) & 0x5555555555555555)

  # 4bit整数に 上位2bit + 下位2bit を計算した値を入れる
  x = (x & 0x3333333333333333) + ((x >> 2) & 0x3333333333333333)

  x = (x + (x >> 4)) & 0x0f0f0f0f0f0f0f0f # 8bitごと
  x = x + (x >> 8) # 16bitごと
  x = x + (x >> 16) # 32bitごと
  x = x + (x >> 32) # 64bitごと = 全部の合計
  return x & 0x0000007f
end

M = Hash.new
M[0] = 0
def f(n)
  if M.has_key?(n)
    M[n]
  else
    M[n] = f(n % popcount(n)) + 1
  end
end

n.times do |i|
  xi = x ^ 1 << n - i - 1
  puts f(x ^ 1 << n - i - 1)
end
