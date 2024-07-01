H, W = gets.chomp.split(" ").map(&:to_i)

canvas = []
H.times do |h|
  canvas[h] = gets.chomp.split("")
end

def have_black?(canvas, x, y)
  dirs = []
  dirs << {x: -1, y:  0} if x != 0 
  dirs << {x:  1, y:  0} if x != W - 1
  dirs << {x:  0, y: -1} if y != 0
  dirs << {x:  0, y:  1} if y != H - 1

  dirs.any? do |p|
    canvas[y + p[:y]][x + p[:x]] == "#"
  end
end

break? = false
H.times do |y|
  W.times do |x|
    next if canvas[y][x] == "."

    break? = true if not have_black?(canvas, x, y)

    break if break?
  end
  break if break?
end

if break? then
  puts "No"
else
  puts "Yes"
end