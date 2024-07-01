n = gets.chomp.to_i

ax = []
ay = []
ah = []
gx, gy, gh = -1, -1, -1
n.times do
  x, y, h = gets.chomp.split(" ").map(&:to_i)
  ax << x
  ay << y
  ah << h
  gx, gy, gh = x, y, h if h > 0
end

ans = []
0.upto(100) do |cx|
  0.upto(100) do |cy|
    ch = gh + (gx - cx).abs + (gy - cy).abs
    ch = [ch, 0].max
    flag = true
    n.times do |i|
      x = ax[i]
      y = ay[i]
      h = ah[i]
      hh = ch - (x - cx).abs - (y - cy).abs
      hh = [hh, 0].max
      if h != hh
        flag = false
      end
    end
    if flag
      ans << [cx, cy, ch]
    end
  end
end

if ans.length == 1
  puts ans[0].join(" ")
end