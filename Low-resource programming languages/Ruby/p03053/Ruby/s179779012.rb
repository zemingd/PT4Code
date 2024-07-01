NEIGHBOURS = [[-1,0],[0,-1],[1,0],[0,1]]

h, w = gets.split.map(&:to_i)

queue = []
dmap = h.times.map { |i|
  gets.chomp.chars.map.with_index { |c, j|
    if c == '#'
      queue << [i,j]
      0
    else
      nil
    end
  }
}

ans = nil
until queue.empty?
  i, j = queue.shift
  ans = dmap[i][j]
  NEIGHBOURS.each do |di,dj|
    ii = i+di
    jj = j+dj
    if ii >= 0 && ii < h &&
       jj >= 0 && jj < w &&
       dmap[ii][jj].nil?
      dmap[ii][jj] = dmap[i][j] + 1
      queue << [ii, jj]
    end
  end
end
puts ans
