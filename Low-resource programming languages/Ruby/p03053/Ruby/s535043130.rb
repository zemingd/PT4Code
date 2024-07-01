h, w = gets.split.map(&:to_i)

queue = []
dmap = Array.new(h) { Array.new(w) }

h.times do |i|
  gets.chomp!.each_char.with_index do |c, j|
    if c == '#'
      queue << [i,j]
      dmap[i][j] = 0
    end
  end
end

ans = nil
until queue.empty?
  i, j = queue.shift
  ans = dmap[i][j]

  if i + 1 < h && dmap[i + 1][j].nil?
    dmap[i+1][j] = ans + 1
    queue << [i+1, j]
  end

  if i - 1 >= 0 && dmap[i-1][j].nil?
    dmap[i-1][j] = ans + 1
    queue << [i-1, j]
  end

  if j + 1 < w && dmap[i][j+1].nil?
    dmap[i][j+1] = ans + 1
    queue << [i, j+1]
  end

  if j-1 >= 0 && dmap[i][j-1].nil?
    dmap[i][j-1] = ans + 1
    queue << [i, j-1]
  end
end
puts ans
