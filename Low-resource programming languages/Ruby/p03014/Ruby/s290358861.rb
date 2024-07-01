H, W = gets.split.map(&:to_i)
MAP = H.times.map{gets.chomp}
R = Array.new(H + 1){ Array.new(W + 2,0) }
C = Array.new(W + 1){ Array.new(H + 2,0) }

(1 .. H).each do |y|
  (0 .. W+1).select{|x| x == 0 || x == W+1 || MAP[y-1][x-1] == '#' }
    .each_cons(2) do |s,t|
      d = t - s - 1
      R[y][s + 1] = d
      R[y][t] = -d
    end
  (1 .. W).each{|x| R[y][x] += R[y][x-1] }
end
(1 .. W).each do |x|
  (0 .. H+1).select{|y| y == 0 || y == H+1 || MAP[y-1][x-1] == '#' }
    .each_cons(2) do |s,t|
      d = t - s - 1
      C[x][s + 1] = d
      C[x][t] = -d
    end

  (1 .. H).each{|y| C[x][y] += C[x][y-1] }
end
puts (1 .. H).map{|y| (1 .. W).map{|x| R[y][x] + C[x][y] - 1}.max }.max



