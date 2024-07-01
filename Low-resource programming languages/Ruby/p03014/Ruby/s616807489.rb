h,w = gets.chomp.split.map(&:to_i)
grid=[]
h.times do
  line = gets.chomp
  ar = Array.new(w, false)
  w.times{|i| ar[i] = line[i] == '#'}
  grid.push ar
end

def yoko(grid,h,w)
  yokogrid = Array.new(h){Array.new(w, 0)}
  h.times do |i|
    count = 0
    w.times do |j|
      if grid[i][j]
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