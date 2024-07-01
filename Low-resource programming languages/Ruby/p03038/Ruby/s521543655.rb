N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
BC = M.times.map { gets.split.map(&:to_i) }
B = 0
C = 1

cnt = Hash.new(0)
A.each do |a|
  cnt[a] += 1
end

BC.each do |bc|
  cnt[bc[C]] += bc[B]
end

rest = N
ans = 0
cnt.sort.reverse_each do |c|
  ans += c[0] * [c[1], rest].min
  rest -= c[1]
  break if rest <= 0
end

puts ans