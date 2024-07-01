n, a, b = gets.chomp("\n").split(" ").map(&:to_i)

result = 0
(1..n).each do |num|
  # a以上b以下
  if num >= a && num <= b
    # 2桁以上だったら1桁ずつ取得して加算
    if num.to_s.length >= 2
      tmp = 0
      num.to_s.chars.each do |c|
        tmp += c.to_i
      end
      if tmp >= a && tmp <= b
        result += num
      end
      next
    else
      result += num
      next
    end
  end
  # bより大きくかつ2桁以上の値
  if num > b && num.to_s.length >= 2
    # 文字列に変換して1桁ずつ取得して加算
    tmp = 0
    num.to_s.chars.each do |c|
      tmp += c.to_i
    end
    if tmp >= a && tmp <= b
      result += num
    end
  end
end
puts result
