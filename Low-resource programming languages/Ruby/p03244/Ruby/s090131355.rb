n = gets.to_i
vs = gets.split.map(&:to_i)
evens = {}
odds  = {}
vs.map.with_index { |e, i|
  if i.even?
    if evens[e].nil?
      evens[e] = 1
    else
      evens[e] += 1
    end
  else # i.odd?
    if odds[e].nil?
      odds[e] = 1
    else
      odds[e] += 1
    end
  end
}

# {key => value} は {値 => 出現回数}。keyが値でvalueが出現回数。

# 偶数列と奇数列で、最頻値が衝突していないかのチェック
evens_top, evens_second = evens.max_by(2) { |key, value| value }
odds_top, odds_second   =  odds.max_by(2) { |key, value| value }
if evens_top[0] == odds_top[0]
  # 衝突している場合には2番目に頻度が高いものの出現回数を比較
  if evens_second.nil? && odds_second.nil?
    # どちらも2番目が存在していない場合
    evens_value = evens_top[0]
    odds_value = evens_value + 1
  elsif odds_second.nil? || evens_second[1] >= odds_second[1]
    evens_value = evens_second[0]
    odds_value = odds_top[0]
  else #evens_second[1] < odds_second[1]
    evens_value = evens_top[0]
    odds_value = odds_second[0]
  end
else
  # 衝突していない場合にはそれぞれの最頻値の値を採用
  evens_value = evens_top[0]
  odds_value = odds_top[0]
end

rewrite_count = 0
evens.each do |key, value|
  unless evens_value == key
    rewrite_count += value
  end
end
odds.each do |key, value|
  unless odds_value == key
    rewrite_count += value
  end
end
puts rewrite_count
