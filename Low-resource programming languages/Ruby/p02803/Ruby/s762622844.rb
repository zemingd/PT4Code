H, W = gets.chomp.split(" ").map(&:to_i)
S = []
H.times do
  S << gets.chomp.split("")
end

$VISITED = Hash.new(false)

def calc_next(pt)
  x, y = pt[0], pt[1]
  next_pt = []
  $VISITED[pt] = true
  [[0,1],[1,0],[0,-1],[-1,0]].each do |d|
    dx, dy = x + d[0], y + d[1]
    next if dx < 0 || dx >= W || dy < 0 || dy >= H ||
            S[dy][dx] == "#" || $VISITED[[dx, dy]]

    next_pt << [dx, dy]
    $VISITED[[dx, dy]] = true
  end
  next_pt
end

results = []

H.times do |y|
  W.times do |x|
    $VISITED = Hash.new(false)
    d = Hash.new(0)
    distance = 0
    next_pt = [[x, y]]
    until next_pt.empty? do
      next_next_pt = []
      next_pt.each do |pt|
        d[pt] = distance
        next_next_pt.concat(calc_next(pt))
      end
      distance += 1
      next_pt = next_next_pt
    end
    results << d.max{|h| h[1]}[1]
  end
end

puts results.max