h,w = gets.split.map(&:to_i)
s = h.times.map{gets.chomp}


dx = [0,1,0,-1]
dy = [1,0,-1,0]
f = h.times.map.all?{|i|
  w.times.map.all?{|j|
    ff = (s[i][j] == "#")? false : true
    4.times{|k|
      ni = i+dy[k]
      nj = j+dx[k]
      if 0<=ni && ni<h && 0<=nj && nj<w 
        if s[i][j] == "#" && s[ni][nj] == "#"
          ff = true
        end
      end
    }
    ff
  }
}

puts f ? "Yes" : "No"