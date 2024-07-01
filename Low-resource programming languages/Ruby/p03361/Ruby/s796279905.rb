H, W = gets.split.map(&:to_i)

canvas = []

H.times do
  canvas << gets.chomp.chars
end

DY = [-1, 0, 1, 0]
DX = [0, 1, 0, -1]

H.times do |y|
  W.times do |x|
    next if canvas[y][x] == '.'

    cnt = 0

    4.times do |i|
      ny = y + DY[i]
      nx = x + DX[i]

      next if ny < 0 || nx < 0 || H <= ny || W <= nx

      cnt += 1 if canvas[ny][nx] == '#'
    end

    if cnt == 0
      puts 'No'
      exit
    end
  end
end

puts 'Yes'
