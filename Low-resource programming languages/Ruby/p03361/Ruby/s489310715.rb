H, W = gets.split.map(&:to_i)
c = []
H.times do
  c << gets.chomp
end
d = [[0, -1], [0, 1], [-1, 0], [1, 0]]
ans = "Yes"
H.times do |h|
  W.times do |w|
    if c[h][w] == "#"
      cnt = 0
      d.each do |(dx, dy)|
        if (0 <= w + dx && w + dx < W) && (0 <= h + dy && h + dy < H)
          cnt += (c[h + dy][w + dx] == "#" ? 1 : 0)
        end
      end
      ans = "No" if cnt == 0
    end
  end
end

puts ans
