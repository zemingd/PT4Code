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
    dxy.each do |dx, dy| 
      nx = x + dx
      ny = y + dy
      if ( 0 <= nx && nx < h && 0 <= ny && ny < w && a[nx][ny] == 46 )
        a[nx][ny] = 35
        ns << [nx, ny]
      end
    end
  end
  blacks = ns.dup
end

puts ans