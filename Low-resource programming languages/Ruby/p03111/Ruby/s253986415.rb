INF = 2**30
n, *$abc = gets.split.map(&:to_i)
$v = readlines.join.split.map(&:to_i)

def f(nn, p)
  if nn == 0 then
    cost, len = 0, [0, 0, 0]
    p.each_with_index do |x, i|
      next if x == -1
      len[x] += $v[i]
      cost += 10
    end
    (0...3).each do |i|
      return INF if len[i] == 0
      cost += ($abc[i] - len[i]).abs
    end
    return cost - 30
  end

  r = INF
  (-1...3).each do |i|
    p.push(i)
    r = [r, f(nn-1, p)].min
    p.pop()
  end
  r
end

puts f(n, [])