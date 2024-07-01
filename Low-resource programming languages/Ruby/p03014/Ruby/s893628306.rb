h, w = gets.split.map(&:to_i)
f = $<.map(&:bytes)
p f

yoko = Array.new(h) { Array.new(w, 0) }
tate = Array.new(h) { Array.new(w, 0) }

h.times{|i|
  w.times{|j|
    if f[i][j] == 46
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
