N, K = gets.split.map(&:to_f)

result = 0
1.upto(N) do |i|
  times = 0
  s = i
  while K > s
    s *= 2
    times += 1
  end

  result += 1/N * 0.5 ** times
end

puts result