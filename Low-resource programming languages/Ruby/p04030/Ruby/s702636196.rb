S = gets.chomp
ans = []
S.chars do |i| # 文字列の各文字を文字列の配列で返す。(self.each_char.to_a と同じ)
  if i != "B"
    ans << i # 文字列を破壊的に連結
  else
    ans.pop  ## 自身の末尾から要素を取り除きそれを返す。
  end
end

puts ans.join
