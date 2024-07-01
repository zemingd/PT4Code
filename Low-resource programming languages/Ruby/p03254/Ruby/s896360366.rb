##N人の子供がいます。 子供たちには 1,2, .. ,N と番号が振られています。
##x個のお菓子を子供たちに配ることにしました。
##このとき、 x個のお菓子をすべて配り切らなければなりません。
##お菓子を貰わない子供がいても構いません。
##各i (1 ≤ i ≤ N) について、子供 i はちょうど ai個のお菓子を貰うと喜びます。 
##お菓子を配る方法を工夫し、喜ぶ子供の人数を最大化しようとしています。
##喜ぶ子供の人数の最大値を求めてください。

##入力は以下の形式で標準入力から与えられる。
##N x
##a1 a2 .. aN
n, x = gets.chomp.split(" ").map(&:to_i)
last = n - 1
a_n = gets.chomp.split(" ").map(&:to_i)

##喜ぶ子供の人数の最大値を出力せよ。
a_m = []
a_n.each_index do |idx|
  check = x - a_n[idx]
  if check >= 0
    if idx == last
      a_m << x
    else
      x -= a_n[idx]
      a_m << a_n[idx]
    end
  else
    a_m << 0
  end
end
# p a_n
# p a_m

num = 0
a_m.each_index do |idx|
  num += 1 if a_m[idx] == a_n[idx]
end
p num