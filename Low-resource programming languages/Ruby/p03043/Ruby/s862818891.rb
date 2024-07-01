require 'pp'

N, K = readline.chomp.split.map(&:to_i)

ans = 0.0
(1..N).each do |n|
  win = 0
  while n < K
    win += 1
    n *= 2
  end
  ans += (1.0/N) * (0.5)**win
end

puts ans

