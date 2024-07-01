N, M = gets.split(' ').map(&:to_i)
bridges = Array.new
M.times do
  bridges.unshift(gets.split(' ').map(&:to_i))
end

island = Array.new(N + 1){|i| i}
inconv = N * (N - 1) / 2
ans = [inconv]
(M - 1).times do
  a, b = bridges.shift
  s, t = island[a], island[b]
  if s == t
    ans.unshift(inconv)
    next
  end
  m = 0
  n = 0
  (1..N).each do |j|
    if island[j] == t
      island[j] = s
      n += 1
    elsif island[j] == s
      m += 1
    end
  end
  inconv -= n * m
  ans.unshift(inconv)
end

puts ans