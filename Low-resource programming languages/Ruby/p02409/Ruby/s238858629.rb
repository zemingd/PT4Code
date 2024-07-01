# 4棟3階建て10フロアの配列
building = Array.new(4){ Array.new(3){ Array.new(10, 0)}}

N = gets.chomp.to_i

for i in  1..N
	imput = gets.chomp.split("\s")
	
	# imputされた文字列をintegerに変換
	for k in 0..3
		imput[k] = imput[k].to_i
	end
	
	# 数値の代入
	building[imput[0] - 1][imput[1] - 1][imput[2] - 1] += imput[3]
end

# 出力

# aa棟bb階の状態を出力する
for aa in 0..3
	for bb in 0..2
		if aa == 3 && bb == 2
			print(building[aa][bb].join("\s"))
		else
			print(building[aa][bb].join("\s"), "\n")
		end
	end
	
	# 最後の段以外は仕切りを入れる
	if aa != 3
		puts "#" * 20
	end
end