h,w = gets.chomp.split.map(&:to_i)
grid=[]
h.times do
  grid.push gets.chomp
end

def yoko(grid,h,w)
  yokogrid = Array.new(h){Array.new(w, 0)}
  h.times do |i|
    count = 0
    w.times do |j|
      if grid[i][j] == '#'
        count = 0
      else
        count += 1
        yokogrid[i][j] = count
      end
    end
  end
  yokogrid
end

yokogrid = yoko(grid,h,w)
tategrid = yoko(grid.transpose,w,h).transpose
yokogridr = yoko(grid.map(&:reverse),h,w).map(&:reverse)
