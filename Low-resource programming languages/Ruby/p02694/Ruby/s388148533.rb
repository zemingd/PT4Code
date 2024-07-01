require 'set'

def main
    m = 100
    x = gets.to_i
    cnt = 0
    while m < x
        m *= 1.01
        m = m.to_i
        cnt += 1
    end
    puts cnt
end

main

## イディオムなど
# until s.empty? do
#
## 配列のインデックス
# s[0,6] # 0番目から6文字
# s[0..6] # 0番目から6番目まで
# s[5..-1] # 5番目から最後まで
#
## 全探索
# [0, 1].repeated_permutation(n) do |combination| # bit全探索
# array.combination(i) do |selected| # array から要素が i 個である部分列を全部抽出
#
## 無向グラフの幅優先探索(BFS)
# to = Array.new(n).map{Array.new()} # ある頂点と繋がる頂点のリスト
# m.times do
#     a,b = gets.chomp.split(" ").map(&:to_i)
#     to[a].push b
#     to[b].push a
# end
# q = Queue.new # BFS は queue
# ds = Array.new(n, -1)
# pre = Array.new(n, -1)
#
## その他
# a1 = Marshal.load(Marshal.dump(a2)) # 深いコピー
# matrix = Array.new(n).map{Array.new()} # 二次元配列の初期化
# 