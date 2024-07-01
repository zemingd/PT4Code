N = gets.to_i

cand = []
0.upto(N) do |t|
  cnt = 0
  i = t
  while i > 0
    cnt += i % 6
    i /= 6
  end
  j = N - t
  while j > 0
    cnt += j % 9
    j /= 9
  end
  cand.push(cnt)
end

puts cand.min