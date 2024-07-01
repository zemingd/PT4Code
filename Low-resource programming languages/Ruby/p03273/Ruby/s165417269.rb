def check(grid,i)
  flg = true
  grid.each do |line|
    if line[i] == "#"
      flg = false
    end
  end

  return flg
end

def show(grid)
  grid.each do |line|
    puts line.join
  end
end


h,w = gets.chomp.split(" ").map(&:to_i)

grid = []
h.times do
  input = gets.chomp.split("")
  unless input.all?{|cell| cell == "."}
    grid << input
  end
end

w.times do |i|
  if check(grid,i)
    grid.each{|line| line[i] = nil }
  end
end

grid.each do |line|
  line.compact!
end

show(grid)