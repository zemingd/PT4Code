n = gets.to_i
a = gets.split.map(&:to_i)
q = gets.to_i
bc = q.times.map{gets.split.map(&:to_i)}

sum = 0
cnt = {}
a.each do |x|
  sum += x
  if cnt[x].nil?
    cnt[x] = 1
  else
    cnt[x] += 1
  end
end

bc.each do |b, c|
  b_cnt = cnt[b] || 0
  diff = c - b

  sum += (diff * b_cnt)
  puts sum

  cnt[b] = 0
  if cnt[c].nil?
    cnt[c] = b_cnt
  else
    cnt[c] += b_cnt
  end
end
