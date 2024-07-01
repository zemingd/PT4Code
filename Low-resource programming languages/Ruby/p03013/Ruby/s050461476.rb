N, M = gets.split.map(&:to_i)
step = [0] * (N+1)
step[0] = 1
M.times { step[gets.to_i] = -1 }

1.upto(N) do |i|
  next if step[i] == -1
  if i == 1
    step[i] = 1
  else
    s1 = (step[i-1] == -1) ? 0 : step[i-1]
    s2 = (step[i-2] == -1) ? 0 : step[i-2]
    if s1 == 0 && s2 == 0
      puts 0
      exit
    else
      step[i] = (s1 + s2) % (10**9 + 7)
    end
  end
end

puts step[N]