# 入力は以下の形式で標準入力から与えられる。
# N
# T A
# H1 H2... HN
n = gets.chomp.to_i
t, a = gets.chomp.split(" ").map(&:to_i)
a_h = gets.chomp.split(" ").map(&:to_i)

# ある国で、宮殿を作ることになりました。
# この国では、標高が x メートルの地点での平均気温は T − x × 0.006 度です。
# 宮殿を建設する地点の候補は N 個あり、地点 i の標高は Hi メートルです。

# これらの中から平均気温が
# A 度に最も近い地点を選んで
# 宮殿を建設すべき地点の番号を出力せよ。
a_h.map! { |h| t-(h*0.006) }
a_h.map! { |h| (h-a).abs  }
# p a_h

check = 0
a_h.each do |v|
  check = v if check < v
end
# p check

h_pos = 0
a_h.each_index do |idx|
  if a_h[idx] < check
    check = a_h[idx]
    h_pos = idx+1
  end
end

p h_pos