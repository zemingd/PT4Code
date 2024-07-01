# 二次元配列を生成し、地道に「#」の周囲マスをチェック。
# 配列の外側を参照するエラーの回避法が分からなかったので、
# 周囲1行1列にダミーの「.」を入れる、という無理矢理な解き方。。。

H , W = gets.split(" ").map(&:to_i)

canvas = Array.new(H+2).map{Array.new(W+2,nil)}
for i in 0..W+1
    canvas[0][i] = "."
    canvas[H+1][i] = "."
end

for j in 1..H
    canvas[j][0] = "."
    canvas[j][W+1] = "."
end


i = 0

for i in 1..W
	j = 1
	gets.chomp.each_char do |grid|
		canvas[i][j] = grid
		j += 1
	end
end

print canvas

for i in 0..H
    for j in 0..W
    	if canvas[i][j] == "#" && canvas[i][j-1] != "#" && canvas[i][j+1] != "#" && canvas[i-1][j] != "#" && canvas[i+1][j] != "#"
    		print "No"
    		exit
    	end
    end
end

print "Yes"