N, M = gets.split.map(&:to_i)
ABCs = readlines.map{|l| a, b, c = l.split.map(&:to_i); [a, b, -c]}
Inf = 1 << 50

d = Array.new(N + 1, Inf)
d[1] = 0
(N - 1).times do
  ABCs.each do |a, b, c|
    d[b] = [d[b], d[a] + c].min
  end
end
n = Array.new(N + 1, false)
N.times do
  ABCs.each do |a, b, c|
    next if d[a] == Inf
    if d[b] > d[a] + c
      d[b] = d[a] + c
      n[b] = true
    end
    n[b] = true if n[a] == true
  end
end
puts n[N] ? 'inf' : -d[N]