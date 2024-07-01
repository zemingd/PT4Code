h, w = $stdin.readline.chomp.split.map(&:to_i)
s = Array.new(h) { $stdin.readline.chomp }

res = 0
h.times do |i|
  w.times do |j|
    next if s[i][j] == "#"
    u = i
    b = i
    b -= 1 while b > 0 && s[b - 1][j] == "."
    u += 1 while u < h - 1 && s[u + 1][j] == "."

    l = j
    r = j
    l -= 1 while l > 0 && s[i][l - 1] == "."
    r += 1 while r < w - 1 && s[i][r + 1] == "."
    res = [res, u - b + r - l + 1].max
  end
end
puts res