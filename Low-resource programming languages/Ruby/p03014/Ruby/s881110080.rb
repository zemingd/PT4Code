h, w = gets.chomp.split.map(&:to_i)
s = []
l = []
h.times do |i|
  s[i] = gets.chomp
  l[i] = []
  a = -1
  cnt = 0
  w.times do |j|
    if j == w-1 && s[i][j] == "."
      cnt += 1
      (a+1).upto(j) do |k|
        l[i][k] = cnt
      end
      cnt = 0
    elsif s[i][j] == "#"
      l[i][j] = "O"
      (a+1).upto(j-1) do |k|
        l[i][k] = cnt
      end
      a = j
      cnt = 0
    else
      cnt += 1
    end
  end
end
ans = 0
w.times do |j|
  a = -1
  cnt = 0
  h.times do |i|
    if i == h-1 && s[i][j] == "."
      cnt += 1
      (a+1).upto(i) do |k|
        ans = l[k][j] + cnt if ans < l[k][j] + cnt
      end
      cnt = 0
    elsif s[i][j] == "#"
      (a+1).upto(i-1) do |k|
        ans = l[k][j] + cnt if ans < l[k][j] + cnt
      end
      a = i
      cnt = 0
    else
      cnt += 1
    end
  end
end
puts ans - 1
