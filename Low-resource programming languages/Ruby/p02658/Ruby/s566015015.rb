# 標準入力Nを整数で、A1..Anを配列で取得し、整数として格納
i = gets.to_i
arry = gets.split(' ').map(&:to_i)

# グローバル変数numを指定。
# グローバル変数numに対して、配列の各要素を乗法する。
num = 1
arry.each do |a|
  num = a * num
end

# numが1000000000000000000以下の時、numを標準出力、より大きい時は、"-1"を出力
if num <=  1000000000000000000
	puts num
else 
  	puts -1
end