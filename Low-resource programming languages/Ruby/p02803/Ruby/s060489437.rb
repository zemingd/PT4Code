def bfs(s, n_path, start)
  return -1 if s[start[0]][start[1]] == "#"

  path_all = {start => true}
  path = [{start => true}]
  n_reached = 1
  step = 0
  while n_reached < n_path do
    path[step + 1] = {}
    path[step].each_key do |p|
      y, x = p
      [[y - 1, x], [y, x + 1], [y + 1, x], [y, x - 1]].each do |q|
        if s[q[0]][q[1]] == "." && !path_all.include?(q)
          path_all[q] = true
          path[step + 1][q] = true
          n_reached += 1
        end
      end
    end
    step += 1
  end
  return step
end

h, w = gets.split.map(&:to_i)
s = h.times.map { "#" + gets.chomp + "#" }
s.unshift("#" * (w + 2))
s.push("#" * (w + 2))
n_path = 0
for i in 1..h do
  n_path += s[i].count(".")
end
max_count = 0
for i in 1..h do
  for j in 1..w do
    count = bfs(s, n_path, [i, j])
    max_count = count if max_count < count
  end
end
puts max_count
