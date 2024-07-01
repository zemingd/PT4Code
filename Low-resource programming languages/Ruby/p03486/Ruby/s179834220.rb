# 入力は以下の形式で標準入力から与えられる。
# s
# t
# 英小文字のみからなる文字列 s, t が与えられます。 
s = gets.chomp
t = gets.chomp

# あなたは、s の文字を並べ替え、文字列 s′ を作ります。 
# また、t の文字を並べ替え、文字列 t′ を作ります。 
s_d = s.split("").sort.join
t_d = t.split("").sort.reverse.join

# このとき、辞書順で s′ < t′ となるようにできるか判定してください。

# 辞書順で s′ < t′ となるようにできるならば Yes を、
# できないならば No を出力せよ。
if s_d < t_d
  puts 'Yes'
else
  puts 'No'
end