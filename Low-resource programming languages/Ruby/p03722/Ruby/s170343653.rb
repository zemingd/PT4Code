N, M = gets.split.map(&:to_i)
EDGES = Hash.new{|h, k| h[k] = [] }
M.times.each do
  a, b, c = gets.split.map(&:to_i)
  EDGES[a] << [b, c]
end

$ans = -Float::INFINITY
def solve(i, route, score)
  if i == N
    $ans = score if score > $ans
  end
  EDGES[i].each do |b, c|
    if route.include?(b)
      puts "inf"; exit
    end
    solve(b, route + [b], score + c)
  end
end

solve(1, [1], 0)
p $ans
