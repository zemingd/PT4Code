W,H,N = gets.split.map(&:to_i)

ans = [0,0,W,H]
N.times do
  x,y,a = gets.split.map(&:to_i)
  case a
  when 1
    ans[0] = x if ans[0] < x
  when 2
    ans[2] = x if x < ans[2]
  when 3
    ans[1] = y if ans[1] < y
  when 4
    ans[3] = y if y < ans[3]
  end
end

x,y,w,h = ans
if x < w && y < h
  puts (w - x) * (h - y)
else
  puts 0
end