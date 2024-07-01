N, M = gets.split.map(&:to_i)
step = [1, 1]
step[0] = 0 if NG[0]
step[1] = 0 if NG[1]
NG = M.times.map{[gets.to_i, true]}.to_h
2.step(N) do |i|
  if NG[i]
    step[i] = 0
  else
    step[i] = (step[i-2] + step[i-1]) % 1000000007
  end
end
puts step[N]
