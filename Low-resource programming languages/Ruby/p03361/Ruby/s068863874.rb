dx = [1, 0, -1, 0]
dy = [0, 1, 0, -1]

def inmap?(i,j,h=$H,w=$W);
  0 <= i && i < h && 0 <= j && j < w
end

h, w  = gets.split.map(&:to_i)
s = Array.new(h){ gets.chomp }

$H = h
$W = w

h.times do |i|
  w.times do |j|
    
    if '#' == s[i][j]
      ok = false
      4.times do |k|
        nx = i + dx[k]
        ny = j + dy[k]
        ok = true if inmap?(nx,ny) && "#" == s[nx][ny]
      end
      if !ok
        puts "No"
        exit
      end
    end
  end
end

puts "Yes"
    