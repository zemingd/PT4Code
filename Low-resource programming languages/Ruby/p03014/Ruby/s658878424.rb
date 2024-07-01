h, w = gets.split.map(&:to_i)
grid = []

h.times do |i|
  grid << gets.chomp.chars
end

cntL = Array.new(h).map{Array.new(w)}
cntR = Array.new(h).map{Array.new(w)}
cntU = Array.new(h).map{Array.new(w)}
cntD = Array.new(h).map{Array.new(w)}

for i in 0 .. h - 1
  for j in 0 .. w - 1

    rj = w - j - 1
    ri = h - i - 1

    if grid[i][j] == '#'

      cntL[i][j] = 0
      cntU[i][j] = 0

    else

      if j == 0
        cntL[i][j] = 1
      else
        cntL[i][j] = cntL[i][j - 1] + 1
      end

      if i == 0
        cntU[i][j] = 1
      else
        cntU[i][j] = cntU[i - 1][j] + 1
      end

    end

    if grid[ri][rj] == '#'

      cntR[ri][rj] = 0
      cntD[ri][rj] = 0

    else

      if rj == w - 1
        cntR[ri][rj] = 1
      else
        cntR[ri][rj] = cntR[ri][rj + 1] + 1
      end
      
      if ri == h - 1
        cntD[ri][rj] = 1
      else
        cntD[ri][rj] = cntD[ri + 1][rj] + 1
      end

    end

  end
end

ans = 0
for i in 0 .. h - 1
  for j in 0 .. w - 1
    ans = [cntL[i][j] + cntR[i][j] +
           cntU[i][j] + cntD[i][j] - 3,
           ans].max
  end
end
puts ans
