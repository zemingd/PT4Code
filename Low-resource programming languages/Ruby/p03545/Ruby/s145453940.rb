
# 入力
S = gets.chomp

# bit全探索を行う
(1 << 3).times do |i|
  # 使った演算子を覚えておく配列
  op = []
  # S[0]は最初の文字なので絶対に加算
  res = S[0].to_i
  3.times do |j|
    if i[j] == 1
      # i[j]が1のときresにS[j+1]をたす
      res = res + S[j+1].to_i
      op.push('+')
    else
      # i[j]が1のときresからS[j+1]をひく
      res = res - S[j+1].to_i
      op.push('-')
    end
  end
  # resが7かどうかチェック
  if res == 7
    puts "#{S[0]}#{op[0]}#{S[1]}#{op[1]}#{S[2]}#{op[2]}#{S[3]}=7"
    exit
  end
end