n = gets.to_i
a = gets.split.map(&:to_i)
cnt = Array.new(100001, 0)
a.each do |i|
  cnt[i] += 1
end
s = a.sum

gets.to_i.times do
  b, c = gets.split.map(&:to_i)
  if cnt[b] > 0
    s -= cnt[b] * b
    s += cnt[b] * c
    cnt[c] += cnt[b]
    cnt[b] = 0
  end
  puts s
end
