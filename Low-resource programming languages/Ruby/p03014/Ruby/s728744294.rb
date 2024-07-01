h, w = gets.split.map(&:to_i)
s = []
s[0] = "#" * (w+2)
for i in 1..h do
  s[i] = "#" + gets.chomp + "#"
end
s[h+1] = "#" * (w+2)

h_len = []
w_len = []
for i in 1..h do
  h_len[i] = Array.new(w+2, 0)
  w_len[i] = Array.new(w+2, 0)
end

for i in 1..h do
  left = 1
  for j in 1..(w+1) do
    if s[i][j] == "#"
      right = j-1
      for k in left..right do
        w_len[i][k] = right-left+1
      end
      left = j+1
    end
  end
end
for j in 1..w do
  top = 1
  for i in 1..(h+1) do
    if s[i][j] == "#"
      bottom = i-1
      for k in top..bottom do
        h_len[k][j] = bottom-top+1
      end
      top = i+1
    end
  end
end
max = 0
for i in 1..h do
  for j in 1..w do
    light = h_len[i][j] + w_len[i][j] - 1
    max = light if max < light
  end
end
puts max
