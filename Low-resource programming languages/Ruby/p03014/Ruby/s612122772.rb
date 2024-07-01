require 'set'; require 'prime'
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
yokogridr = yoko(grid.map(&:reverse),h,w).map(&:reverse)
tategridr = yoko(grid.transpose.map(&:reverse),w,h).map(&:reverse).transpose

de=false
if de
  yokogrid.each do |line|
    p line if de
  end
  p '' if de
  yokogridr.each do |line|
    p line if de
  end
  p '' if de
  tategrid.each do |line|
    p line if de
  end
  p '' if de
  tategridr.each do |line|
    p line if de
  end
end

ans = 0
h.times do |i|
  w.times do |j|
    next if grid[i][j]
    can = yokogrid[i][j] + tategrid[i][j] + yokogridr[i][j] + tategridr[i][j]
    ans = can if ans < can
  end
end

puts ans - 3
