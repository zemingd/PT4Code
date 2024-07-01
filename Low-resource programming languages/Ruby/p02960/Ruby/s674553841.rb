# https://atcoder.jp/contests/abc135/tasks/abc135_d
# 153716888
MOD = (10**9) + 7
s = gets.chomp
l = s.size
m = 13
dma = {
  10  =>  1,
  9   => 10,
  12  =>  9,
  3   => 12,
  4   =>  3,
  1   =>  4
}
b = [1, 10, 9, 12, 3, 4][l%6]
hatena = '?'
before = [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
l.times do |i|
  curr = []
  b = dma[b]
  if s[i] == hatena
    m.times { |j| curr[j] = 10.times.inject { |sum, k| (sum + before[(j+k*b)%m])%MOD } }
  else
    k = s[i].to_i
    m.times { |j| curr[j] = before[(j+k*b)%m]%MOD }
  end
  before = curr
end
p curr[8]
