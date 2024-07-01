h, w = gets.chomp.split(' ').map(&:to_i)
maze = []
h.times { maze << gets.chomp.split('') }
dirs = [[0, 1], [1, 0], [0, -1], [-1, 0]]
max = 0
(0...h).each do |si|
  (0...w).each do |sj|
    next if maze[si][sj] == '#'
    visited = Hash.new(false)
    queue = [[si, sj]]
    distance = 0
    until queue.empty?
      length = queue.length
      length.times do
        qi, qj = queue.shift
        next if visited["#{qi}-#{qj}"]
        visited["#{qi}-#{qj}"] = true
        max = [max, distance].max
        dirs.each do |d|
          ni, nj = qi + d[0], qj + d[1]
          next if ni < 0 ||
              nj < 0 ||
              ni >= h ||
              nj >= w ||
              visited["#{ni}-#{nj}"] ||
              maze[ni][nj] == '#'
          queue << [ni, nj]
        end
      end
      distance += 1
    end
  end
end
puts max