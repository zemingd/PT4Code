r, c = gets.split.map(&:to_i)

maze = []
r.times {maze << gets.chomp.split('')}
ss = Array.new(r).map {Array.new(c, nil)}

nxy = [[0, 1], [1, 0], [0, -1], [-1, 0]]

cnt = 0
while maze.flatten.select {|e| e == '.'}.size.positive? && (cnt += 1)
  (0..r - 1).each do |rt|
    (0..c - 1).each do |ct|
      if maze[rt][ct] != '.' && maze[rt][ct] != cnt
        nxy.each do |xy|
          ap = [rt + xy[0], ct + xy[1]]
          next if ap[0] < 0 || ap[0] >= r || ap[1] < 0 || ap[1] >= c
          next if maze[ap[0]][ap[1]] != '.'
          maze[ap[0]][ap[1]] = cnt
        end
      end
    end
  end
end

p cnt
