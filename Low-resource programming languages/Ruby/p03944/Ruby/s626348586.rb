w,h,n = gets.chomp.split(" ").map{|str| str.to_i}

#WとHがそんなに大きくないので実際に塗っても問題ない
#塗り方から白い部分は必ず長方形を描く
#したがって白い部分の端の辺の座標だけ求めればよい #猛烈な手のひら返し

left = 0
right = w
down = 0
up = w

n.times do
	x,y,a = gets.chomp.split(" ").map{|str| str.to_i}
	case a
	when 1 then
		left = (left < x ? x : left)
	when 2 then
		right = (x < right ? x : right)
	when 3 then
		down = (down < y ? y : down)
	when 4 then
		up = (y < up ? y : up)
	end
end

if right <= left || up <= down then
	#全部塗りつぶされた
	puts 0
else
	puts (right - left) * (up - down)
end