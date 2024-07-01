N, K = gets.split.map(&:to_i)
hate_numbers = gets.split.map(&:to_i)
price = N.to_s.split("").map(&:to_i).reverse
payment = []
carrying = false # 繰り上がりが必要か否かを示すフラグ
price.each do |current_num|
  if carrying # 前の桁で繰り上がりが発生した場合
    carrying = false # 繰り上がりフラグをリセット
    current_num += 1 # 繰り上がりで1加算する
    if current_num >= 10
      carrying = true
      current_num %= 10
    end
  end

  while hate_numbers.include?(current_num)
    current_num += 1
    if current_num >= 10
      carrying = true
      current_num %= 10
    end
  end
  payment << current_num
end

# 一番大きな位まで処理したが、繰り上がりが発生している可能性があるためその処理
if carrying
  current_num = 1
  while hate_numbers.include?(current_num)
    current_num += 1
  end
  payment << current_num
end

# 結果の出力
puts payment.reverse.join("")
