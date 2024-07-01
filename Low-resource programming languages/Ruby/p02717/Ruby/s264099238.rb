X,Y,Z = gets.split.map(&:to_i)  # スペースで区切られた複数の整数
X.freeze
Y.freeze
Z.freeze
#配列生成
ary = Array.new(3, 0)

ary[0] = Z
ary[1] = X
ary[2] = Y

ans = ary[0].to_s + " " + ary[1].to_s + " " + ary[2].to_s
puts ans