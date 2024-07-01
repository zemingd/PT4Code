h, w = gets.strip.split.map(&:to_i)
s = h.times.map { gets.strip.split('') }
ar = [[0,-1],[1,0],[0,1],[-1,0]]

def area(y,x, h, w)
  flag = false
  flag = true if 1<=x && x<=w && 1<=y && y<=h
  return flag
end

(1..h).each do |i|
  (1..w).each do |j|
    if s[i-1][j-1] == "#"
      judge = false
      (1..ar.length).each do |p|
        if area( i + ar[p-1][1], j + ar[p-1][0], h, w )
          if s[i + ar[p-1][1] - 1][j + ar[p-1][0] - 1] == "#"
            judge = true
          end
        end
      end
      unless judge
          puts "No"
          exit 0
      end
    end
  end
end

puts ('Yes')