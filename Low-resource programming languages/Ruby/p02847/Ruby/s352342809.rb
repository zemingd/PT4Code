=begin
N = gets.to_i               # 単一整数
a = gets.split.map(&:to_i)  # スペースで区切られた複数の整数
a = N.times.map{gets.to_i}  # 縦に並んだ複数の整数。たまにある
s = gets.chomp              # 文字列。chompを付けないと改行文字がついてくる
=end
a,b,x = gets.split.map(&:to_s)  # スペースで区切られた複数の整数
A = a.to_i
B = b.to_i
X = x.to_i
# puts x
# X = X.to_d
# puts a
# A = a[0].to_i
# B = a[1].to_i
# X = a[2].to_f
# puts A,B,X

n = X/ 2
# puts n

def d(n)
	n.to_s.size
end

m = n
l = n
while A * n + B * d(n) > X 
	# puts A * n + B * d(n) 
	break if n < 1
	n -= 1
end

puts n
