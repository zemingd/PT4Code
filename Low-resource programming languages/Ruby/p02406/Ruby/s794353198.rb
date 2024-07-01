# 構造化プログラミング

# goto 文は、C/C++言語などで使うことのできる文で、実行されると無条件に指定されたラベルに処理が飛びます。
# 例えば goto CHECK_NUM; という文が実行されると、プログラムの中で CHECK_NUM: と書かれた行に処理が移ります。
# この機能を使って、繰り返し処理なども実現することができます。

# 一方、goto 文は自由度が高すぎ、プログラムの可読性に影響するため、可能な限り使わないことが推奨されています。

# 次のC++言語のプログラムと同じ動作をするプログラムを作成してください。
# ただし、goto 文は使わないで実装してみましょう。 

# (意訳) 標準入力によって数字Nが入力されたとき、
# 1からNまでの数字のうち、3の倍数または3を含む数全てを出力しなさい。
# outputの初めに空白を入れることに注意。

# Input 32
# Output  3 6 9 12 13 15 18 21 23 24 27 30 31 32

# 標準入力
N = gets.chomp.to_i

# 解答を入れる配列
ans_arr = Array.new

# 数字の中に3があるかどうかを判別
def exist3(int)
	int_len = int.to_s.length
	flag = false

	for k in 0..int_len - 1
	key = int_len - 1 - k

		if int / (10 ** key) == 3 
			flag = true
			break
		else int -= (int / (10 ** key)) * (10 ** key)	#前半の()で一番大きな位の桁が得られる

		end
	end
return flag
end	

# カウント
for i in 1..N
	if exist3(i)
		ans_arr += [i]
	elsif i % 3 == 0
		ans_arr += [i]
	elsif i % 10 == 3
		ans_arr += [i]
	end
end
print("\s", ans_arr.join("\s"), "\n")