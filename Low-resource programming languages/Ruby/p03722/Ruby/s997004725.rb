N, M = gets.split.map(&:to_i)
EDGES = Hash.new{|h, k| h[k] = [] }
M.times.each do
  a, b, c = gets.split.map(&:to_i)
  EDGES[a] << [b, c]
end

def update_route(route, b, c)
  (route.map{|i, k|
    [i, k+c]
  } + [[b, c]]).to_h
end

$ans = -Float::INFINITY
def solve(i, route)
  #pp i: i, route: route
  if i == N
    score = route[1]
    $ans = score if score > $ans
  end
  EDGES[i].each do |b, c|
    if (sum = route[b])
      if sum + c > 0
        puts "inf"; exit
      end
    else
      solve(b, update_route(route, i, c))
    end
  end
end

solve(1, {1 => 0})
p $ans
