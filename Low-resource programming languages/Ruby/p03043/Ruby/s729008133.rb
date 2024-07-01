N, K = gets.chomp.split(' ').map(&:to_i);

ret = 0
N.times { |n|
  p = n + 1

  if p >= K
    ret += 1 / N
    next
  end

  log = 0
  x = p
  while (x < K) do
    x *= 2
    log += 1
  end
  ret += (1 / N.to_f) * (0.5 ** log)
}
print(ret)
