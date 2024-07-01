##B - 文字列大好きいろはちゃんイージー / Iroha Loves Strings (ABC Edition)
#1行目
n, l = gets.chomp.to_i

#2行目以降読み込み
x = $stdin.read.split("\n")
x = x.min(n)
x = x.join

print x