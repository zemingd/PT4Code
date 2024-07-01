H, W = gets.split.map(&:to_i)
MAP = H.times.map{gets.chomp}
R = Array.new(H + 1)
(1 .. H).each do |y|
  R[y] = (0 .. W+1).select{|x| x == 0 || x == W+1 || MAP[y-1][x-1] == '#' }
end
C = Array.new(W + 1)
(1 .. W).each do |x|
  C[x] = (0 .. H+1).select{|y| y == 0 || y == H+1 || MAP[y-1][x-1] == '#' }
end
ans = (1 .. H).map do |y|
  (1 .. W).map do |x|
    if MAP[y-1][x-1] == '#'
      0
    else
      i = R[y].bsearch_index{|b| b > x }
      j = C[x].bsearch_index{|b| b > y }
      R[y][i] - R[y][i-1] + C[x][j] - C[x][j-1] -3
    end
  end
end.flatten.max
puts ans
