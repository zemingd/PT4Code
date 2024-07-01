h,w = gets.chomp.split(" ").map(&:to_i)
s = h.times.map{gets.chomp}
map = [[-1,0],[0,-1],[0,1],[1,0]]
flg = true
for i in 0..h-1
  for j in 0..w-1
    if s[i][j] == "#"
      adj = false
      map.each do |d|
        k = i+d[0]
        l = j+d[1]
        if 0 <= k && k < h && 0 <= l && l < w
          if s[k][l] == "#"
            adj = true
          end
        end
      end
      if !adj
        flg = false
      end
    end
  end
end
puts flg ? "Yes" : "No"