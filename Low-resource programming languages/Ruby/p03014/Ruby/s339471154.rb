h, w = gets.split.map(&:to_i)
f = h.times.map{gets.chomp}

yoko = (0..h).map{[0] * w}
tate = (0..h).map{[0] * w}

h.times{|i|
  w.times{|j|
    if f[i][j] == '.'
      if i == 0
        yoko[i][j] = 1
      else
        yoko[i][j] = yoko[i-1][j]+1
      end
      if j == 0
        tate[i][j] = 1
      else
        tate[i][j] = tate[i][j-1]+1
      end
    end
  }}

(h-2).downto(0).each{|i|
  (w-2).downto(0).each{|j|
    if yoko[i][j] < yoko[i+1][j]
      yoko[i][j] = yoko[i+1][j]
    end
    if tate[i][j] < tate[i][j+1]
      tate[i][j] = tate[i][j+1]
    end
  }}

ans = 0

h.times{|i|
  w.times{|j|
    ans = [ans, yoko[i][j] + tate[i][j] - 1].max
  }}

p ans
