S = gets

cnt = [0, 0]
S.size.times do |i|
  cnt[0] += 1 if S[i] == (i % 2).to_s
  cnt[1] += 1 if S[i] == ((i+1) % 2).to_s
end
puts cnt.min
