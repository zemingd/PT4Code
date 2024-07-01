# 行列への数値入力メソッド
def deter_ins (a, b, deter)
	for i in 0..a - 1
		imput = gets.chomp.split("\s")
		for j in 0..b - 1
			deter[i][j] = imput[j].to_i
		end
	end
	return deter
end

imput = gets.chomp.split("\s")
n, m, l = imput[0].to_i, imput[1].to_i, imput[2].to_i

determinant_A = Array.new(n) { Array.new(m) }	#<= n行m列
determinant_B = Array.new(m) { Array.new(l) }	#<= m行l列

# 行列作成
a = deter_ins(n, m, determinant_A)
b = deter_ins(m, l, determinant_B)

# 計算
det_ans = Array.new(n) { Array.new(l) }	#<= n行l列の行列(回答)

for p in 0..n - 1
	for q in 0..l - 1
		sum = 0
		for r in 0..m - 1
			sum += a[p][r] * b[r][q]
		end
		det_ans[p][q] = sum
	end
end

# 出力
for k in 0..p
	puts det_ans[k].join("\s")
end