def inc(x,y,xx,yy)
	return x == xx ? nil : (y-yy)/(x-xx)
end

gets.to_i.times do |i|
  x1,y1,x2,y2,x3,y3,x4,y4 = gets.split.map(&:to_f)
  puts inc(x1,y1,x2,y2) == inc(x3,y3,x4,y4) ? "YES" : "NO"
end