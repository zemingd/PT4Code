INF = 10**8
N = gets.to_i
S = gets.chomp
# 先頭がリーダーの時の変更人数→先頭以外の文字列から"E"の個数
pre = S[1, S.size - 1].count("E")
ans = pre
# binding.pry
(S.size - 1).times do |i|
  if S[i] == "W" && S[i+1] == "W"
    pre += 1

  elsif S[i] == "E" && S[i+1] == "E"
    pre -= 1
    ans = pre if ans > pre
  end
end
puts ans