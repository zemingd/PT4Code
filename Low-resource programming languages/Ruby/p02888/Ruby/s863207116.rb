#値の入力を受け付ける
N = gets.to_i
l = gets.chomp!.split(' ').map { |e| e.to_i }

L = l.sort
patterns= 0
#長い辺から順に調べていく．
for h1 in (2..N-1).to_a.reverse! do
  for h2 in (1..h1-1).to_a.reverse! do
    # L[h2]がL[h1]の2倍以下→もう三角形は作れないので枝刈り
    break if L[h2]*2 < L[h1]
    #三角形が作れる最小のindexを探索する
    h3_idx = h2
    for h3 in 0..h2-1 do
      if L[h2] + L[h3] > L[h1] then
        h3_idx = h3
        break
      end
    end
    patterns += (h2-h3_idx)
  end
end

p patterns
