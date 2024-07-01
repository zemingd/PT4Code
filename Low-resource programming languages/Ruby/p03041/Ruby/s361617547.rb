N, K = gets.chomp.split(' ').map(&:to_i);

ret = 0
last = N >= K ? (K - 1) : N
(1..last).each { |p|
  log = 0
  x = p
  while (x < K) do
    x *= 2
    log += 1
  end
  ret += (1 / N.to_f) * (0.5 ** log)
}
ret += (N - K + 1) / N.to_f if N >= K
print(ret)
