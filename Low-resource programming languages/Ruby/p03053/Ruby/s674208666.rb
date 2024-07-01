# 0:17-
h, w = gets.to_s.split.map{|t| t.to_i }

# p ".#".bytes #=> [46, 35]
blacks = []
a = Array.new(h) do |i| 
  s = gets.to_s.chomp.bytes
  s.each_with_index do |c, j|
    blacks << [i, j] if c == 35
  end
  s
end

dxy = [[1, 0], [0, 1], [-1, 0], [0, -1]]

ans = -1
while blacks.any?
  
  ns = []
  ans += 1
  
  blacks.each do |x, y|
    nx = x - 1
    if 0 <= nx && a[nx][y] == 46
      a[nx][y] = 35
      ns << [nx, y]
    end
    nx = x + 1
    if nx < h && a[nx][y] == 46
      a[nx][y] = 35
      ns << [nx, y]
    end
    ny = y - 1
    if 0 <= ny && a[x][ny] == 46
      a[x][ny] = 35
      ns << [x, ny]
    end
    ny = y + 1
    if ny < w && a[x][ny] == 46
      a[x][ny] = 35
      ns << [x, ny]
    end
  end
  blacks = ns.dup
end

puts ans