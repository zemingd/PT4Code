H,W = gets.split.map(&:to_i)
org_map = []
H.times do |row|
  org_map << gets.split("")
end

max_len = 0

H.times do |i|
  W.times do |j|
    cur_map = Marshal.load(Marshal.dump(org_map))
    if cur_map[i][j] == '#'
      next
    end
    q = []
    q << {cy:i,cx:j}
    cur_map[i][j] = 0

    proc = Proc.new do |cy,cx,len|
      if org_map[cy][cx] == '.'
        cur_map[cy][cx] = len
        q << {cy: cy, cx:cx}
      end
    end

    while q.empty? != true
      pos = q.shift
      cx = pos[:cx]
      cy = pos[:cy]
      len = cur_map[cy][cx]
      #puts "cx:#{cx},cy:#{cy},len:#{len}"

      len += 1
      # 左
      if 0 < cx && cur_map[cy][cx-1] == '.'
        proc.call(cy, cx-1, len)
      end
    
      # 上
      if 0 < cy && cur_map[cy-1][cx] == '.'
        proc.call(cy-1, cx, len)
      end
    
      # 右
      if cx < W-1 && cur_map[cy][cx+1] == '.'
        proc.call(cy, cx+1, len)
      end
      # 下
      if cy < H-1 && cur_map[cy+1][cx] == '.'
        proc.call(cy+1, cx, len)
      end
    end
    H.times do |i|
      W.times do |j|
        if cur_map[i][j] != '#'
          max_len = cur_map[i][j] if max_len < cur_map[i][j]
        end
      end
    end
  end
end
puts max_len
