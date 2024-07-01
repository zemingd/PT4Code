"
ABC 103 D - Islands War
https://atcoder.jp/contests/abc103/tasks/abc103_d
"

# 要求の構造体
Req = Struct.new(:s, :t)

# 入力
N, M = gets.split.map(&:to_i)
a = []
b = []
r = [] #構造体の配列
M.times do |i|
  a[i], b[i] = gets.split.map(&:to_i)
  r << Req.new(a[i], b[i])
end

# 配列rをtの値で昇順ソート
r = r.sort {
  |r1, r2| r1.t <=> r2.t
}

# greedy
n = r[0].t # tのうち最も小さいもの
ans = 1
r.each do |x|
  # s が t より大きいなら，そのsに関してはnの前の橋を切っても分離されない
  if n <= x.s
    n = x.t
    ans += 1
  end
end
puts ans