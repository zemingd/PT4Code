##入力は以下の形式で標準入力から与えられる。
##N M
##a1 b1
##:
##aM bM
n, m = gets.chomp.split(" ").map(&:to_i)
a_ab = []
m.times do
  a_ab << gets.chomp.split(" ").map(&:to_i)
end
# p a_ab

##N個の都市があり、 M本の道路があります。
##i (1 ≦ i ≦ M)番目の道路は、
##都市 ai と 都市 bi (1 ≦ ai,bi ≦ N)を双方向に結んでいます。
##同じ 2つの都市を結ぶ道路は、1本とは限りません。
##各都市から他の都市に向けて、何本の道路が伸びているか求めてください。

##制約
##2 ≦ N,M ≦ 50
##1 ≦ ai, bi ≦ N
##ai ≠ bi
##入力は全て整数である。

##答えを N行に出力せよ。
##i (1 ≦ i ≦ N)行目には、都市 iから他の都市に向けて、
##何本の道路が伸びているかを出力せよ。

a_n = []
1.upto(n) do |i|
  num = 0
  a_ab.each do |a|
    num += 1 if i == a[0] || i == a[1]
  end
  
  a_n << num
end

a_n.each do |v|
  p v
end