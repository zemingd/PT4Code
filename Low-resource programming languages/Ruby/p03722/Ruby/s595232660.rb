N, M = gets.split.map(&:to_i)
EDGES = Hash.new{|h, k| h[k] = [] }
M.times.each do
  a, b, c = gets.split.map(&:to_i)
  EDGES[a] << [b, c]
end

def calc(route)
  ret = 0
  route.each_cons(2) do |i, j|
    b, c = EDGES[i].find{|b, c| b == j}
    ret += c
  end
  return ret
end

$ans = -Float::INFINITY
def solve(i, route, score)
  if i == N
    $ans = score if score > $ans
  end
  EDGES[i].each do |b, c|
    if route.include?(b)
      cycle = [i] + route.drop(route.index(b))
      if calc(cycle) > 0
        puts "inf"; exit
      end
    else
      solve(b, route + [b], score + c)
    end
  end
end

solve(1, [1], 0)
p $ans
