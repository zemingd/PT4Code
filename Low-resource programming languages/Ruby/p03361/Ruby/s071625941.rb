H, W = gets.split.map(&:to_i)
s = H.times.map { gets.chomp.chars }
dy = [-1, 0, 1, 0]
dx = [0, 1, 0, -1]
H.times  do |y|
  W.times do |x|
    next if s[y][x] == '.'

    f = false
    4.times  do |k|
      ny = y + dy[k]
      nx = x + dx[k]
      next if ny < 0 || H <= ny || nx < 0 || W <= nx
      f = true if s[ny][nx] == '#'
    end
    unless f
      puts 'No'
      exit
    end
  end end
puts 'Yes'
