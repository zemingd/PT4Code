N, M = gets.split.map(&:to_i)

LR = M.times.map { gets.split.map(&:to_i) }

ans = (1..N).to_a

LR.each do |l, r|
  ans = ans & (l..r).to_a
end

puts ans.size