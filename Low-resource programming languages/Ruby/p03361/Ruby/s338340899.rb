h, w = gets.chomp.split.map(&:to_i)
s = []
h.times do |i|
  s[i] = gets.chomp.split("").map(&:to_s)
end

h.times do |i|
  w.times do |j|
    if s[i][j] == "#"
      # 右側に探索
      if j + 1 < w && s[i][j + 1] != "."
        s[i][j] = "@"
        x = 1
        while (j + x < w) do
          if s[i][j + x] != "."
            s[i][j + x] = "@"
            y = 1
            while (i + y < h) do
              s[i + y][j + x] = "@" if s[i + y][j + x] != "."
              y += 1
            end
          end
          x += 1
        end
      end
      # 下側に探索
      if i + 1 < h && s[i + 1][j] != "."
        s[i][j] = "@"
        y = 1
        while (i + y < h) do
          s[i + y][j] = "@" if s[i + y][j] != "."
          y += 1
        end
      end
    end
  end
end

result = "Yes"
s.each do |si|
  result = "No" if si.include?("#")
end

puts result