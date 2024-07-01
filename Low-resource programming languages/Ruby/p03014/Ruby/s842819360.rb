H, W = gets.split.map(&:to_i)

MAP = $<.to_a
h_lamp = Array.new(H + 1){[0]}
v_lamp = Array.new(W + 1){[0]}

(1 .. H).each do |y|
  (1 .. W).each do |x|
    if MAP[y-1][x-1] == '#'
      h_lamp[y] << x
      v_lamp[x] << y
    end
  end
  h_lamp[y] << W+1
end
(1 .. W).each{|x| v_lamp[x] << H+1 }


R = Array.new(H + 1){ Array.new(W + 2,0) }
C = Array.new(W + 1){ Array.new(H + 2,0) }

(1 .. H).each do |y|
  h_lamp[y].each_cons(2) do |s,t|
    d = t - s - 1
    R[y][s + 1] = d
    R[y][t] = -d
  end
  (1 .. W).each{|x| R[y][x] += R[y][x-1] }
end
(1 .. W).each do |x|
  v_lamp[x].each_cons(2) do |s,t|
    d = t - s - 1
    C[x][s + 1] = d
    C[x][t] = -d
  end
  (1 .. H).each{|y| C[x][y] += C[x][y-1] }
end
puts (1 .. H).map{|y| (1 .. W).map{|x| R[y][x] + C[x][y] - 1}.max }.max
