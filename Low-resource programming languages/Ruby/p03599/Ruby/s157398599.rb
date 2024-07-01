A, B, C, D, E, F = gets.split.map(&:to_i)

# 限界濃度ピッタリのパターンが出た場合に立てるフラグ
flag = false

# 暫定最大値を格納する変数
max_water = 0
max_sugar = 0

(0..(F/100/A)).each do |a|
  # 操作1を行った回数分、limitを減らす
  a_limit = F - 100*A*a
  (0..(F/100/B)).each do |b|
    # 操作2を行った回数分、limitを減らす
    b_limit = a_limit - 100*B*b
    (0..(F/C)).each do |c|
      # puts "#{a} #{b} #{c}" # for debug
      # 操作3を行った回数分、limitを減らす
      c_limit = b_limit - C*c
      # この時点で、ビーカーの水の量 current_water は以下の通り。
      current_water = 100*A*a + 100*B*b
      # この時点で、ビーカーの砂糖の量 current_sugar は以下の通り。
      current_sugar = C*c

      if current_sugar * 100 > E * current_water
        # この時点で砂糖が溶け残っていては話にならないので諦めてnext
        next
      end

      # 限界濃度に達するまで追加できる砂糖の量（少数注意！）を算出する
      addable_sugar = E * current_water / 100.to_f - current_sugar
      # 限界濃度ギリギリまで操作4を行うことができる回数を算出する
      d_temp1 = (addable_sugar / D).to_i
      # 重量の面から見てギリギリまで操作4を行うことができる回数を算出する
      d_temp2 = c_limit / D
      # 操作4は上記2つの回数のうち、少ない方である（※どちらも超えてはならないため）
      d = [d_temp1, d_temp2].min
      # ビーカーの砂糖の量 current_sugar を更新
      current_sugar += D*d

      if current_sugar.nonzero? && current_water.nonzero? && current_sugar * 100 == E * current_water
        # ちょうど限界濃度である場合にはこれが最大値となる
        max_water = current_water
        max_sugar = current_sugar
        # これ以上処理を続けても無意味なのでフラグを立ててブレークする
        flag = true
        break
      end

      if (max_sugar == 0 && max_water == 0) || \
        current_sugar / (current_sugar + current_water).to_f > max_sugar / (max_sugar + max_water).to_f
        # 暫定最大値がまだ無い、または暫定最大値の濃度よりも濃い濃度になった場合には暫定最大値を更新する
        max_water = current_water
        max_sugar = current_sugar
        # puts "#{max_water + max_sugar} #{max_sugar}" # for debug
      end
    end
    break if flag
  end
  break if flag
end

# puts "----"
# puts flag
puts "#{max_water + max_sugar} #{max_sugar}"
