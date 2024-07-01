def min_dist_to_black(map, i0, j0, h, w)
  visited = {}
  queue = []
  queue.push([i0, j0, 0])

  until queue.empty?
    i, j, d = queue.shift
    visited[[i,j]] = true
    if map[i][j] == '#'
      return d
    else
      -1.upto(1) do |di|
        -1.upto(1) do |dj|
          next unless di * dj == 0
          if (i+di).between?(0,h-1) && (j+dj).between?(0,w-1) &&
             !visited.has_key?([i+di,j+dj])
            queue.push([i+di, j+dj, d+1])
          end
        end
      end
    end
  end
  fail
end

def populate(dmap, h, w, queue, d)
  until queue.empty?
    i, j = queue.shift
    -1.upto(1) do |di|
      -1.upto(1) do |dj|
        next unless di * dj == 0
        if (i+di).between?(0,h-1) && (j+dj).between?(0,w-1) &&
           dmap[i+di][j+dj].nil?
          dmap[i+di][j+dj] = dmap[i][j] + 1
          queue << [i+di, j+dj]
        end
      end
    end
  end
end

h, w = gets.split.map(&:to_i)

map = h.times.map {
  gets.chomp.chars
}

queue = []
distance_map = map.map.with_index { |row, i|
  row.map.with_index { |c, j|
    if c == '#'
      queue << [i,j]
      0
    else
      nil
    end
  }
}

populate(distance_map, h, w, queue, 0)

p distance_map.map { |row| row.max }.max
