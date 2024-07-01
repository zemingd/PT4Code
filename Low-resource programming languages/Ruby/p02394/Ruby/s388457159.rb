w,h,x,y,r = readline.split.map(&:to_i)

# 上辺 && 左辺 && 底辺 && 右辺
if h <= (y + r) && (x - r) >= 0 && (y - r) >= 0 && w <=(x + r)
  puts "Yes"
else
  puts "No"
end
