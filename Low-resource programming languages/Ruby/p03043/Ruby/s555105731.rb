N, K = STDIN.gets.chomp.split(' ').map(&:to_i)


result = 0
for saikoro in 1..N do
  now = saikoro
  tmp = 1.0
    while (now < K) do
      now = now * 2
      tmp = tmp / 2
    end
  result += 1.0 / N * tmp
end

puts result