# coding: utf-8
N = gets.to_i
a = gets.split.map {|e| e.to_i}

# ボールの出現回数のハッシュマップを作成
h = {}
a.each do |e|
  h[e] = 0 unless h.has_key? e 
  h[e] += 1
end

def comb(n)
  (n * (n-1))/2
end

# k毎でループ
a.each do |e|
  _ans = 0

  # 組み合わせ数の計算、出力
  # ただし、自分の場合は個数を一つ減らす
  h.each do |k, v|
#    p "#{k}, #{v}"
    v -= 1 if k == e
    next if v == 1
#    p "v=#{v}"
    _ans += comb(v)
#    p "ans=#{_ans}"
  end
  puts _ans
end
