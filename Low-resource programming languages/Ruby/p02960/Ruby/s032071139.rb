# 153716888
MOD = (10**9) + 7
s = gets.chomp
l = s.size
m = 13
dp = Array.new(l+1) { Array.new(13) {0} }
dp[0][0] = 1
dma = {
 10  =>  1,
 9   => 10,
 12  =>  9,
 3   => 12,
 4   =>  3,
 1   =>  4
}
b = [1, 10, 9, 12, 3, 4][(l%6)]
hatena = '?'
before = [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
curr = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
l.times do |i|
  curr = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  b = dma[b]
  if s[i] == hatena
    10.times do |k|
      m.times do |j|
        curr[j] = (curr[j] + before[(j+k*b)%m])%MOD
      end
    end
  else
    k = s[i].to_i
    m.times do |j|
      curr[j] = before[(j+k*b)%m]%MOD
    end
  end
  before = curr
end
p curr[8]