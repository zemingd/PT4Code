n, k = gets.chomp.split.map(&:to_i)

s = gets.chomp
# k の要素数を-1 している
s[k - 1] = s[k - 1].downcase  # downcaseは大→小へ変換する
                              # upcaseはその逆、先頭だけは capitalize 、大小入れ替えは swap
puts s
