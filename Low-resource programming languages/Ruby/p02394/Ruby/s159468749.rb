w,h,x,y,r = gets.split.map(&:to_i)
xmax = w - r
ymax = h - r
puts r<x&&x<xmax&&r<y&&y<ymax ? :Yes : :No	# x軸方向[r<x&&x<(w-r)] y軸方向[r<y&&y<(h-r)]