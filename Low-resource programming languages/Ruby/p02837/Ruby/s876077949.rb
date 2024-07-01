# coding: utf-8
N = gets.to_i

# 人数分の評価記録リストを作成
evas = Array.new(N, nil)

# 評価の矛盾件数
c = 0

# 外側のループ：人数分
(1..N).each do |_|
  # 内側のループ：証言数
  num = gets.to_i
  num.times do |_|
    person, eva = gets.split.map {|e| e.to_i}
    # まだ評価されていない場合は評価かきこみ
    if evas[person-1] == nil
      evas[person-1] = eva
    else
      # 評価に矛盾がある場合は件数をカウント
      if evas[person-1] != eva
        c += 1
      end
    end
  end
end

# 評価に矛盾のない人数を出力
# ただし、すべての評価がもれなくX:0の場合は、少なくとも一人は正直である可能性がある
if evas.all? {|e| e == 0}
  puts 1
else
  puts N - c
end

