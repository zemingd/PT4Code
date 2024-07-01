n,q = gets.split.map(&:to_i)
ss = gets.split('')
lrs = q.times.map{ gets.split.map(&:to_i) }

counts = []
ss.each.with_index do |str, i|
  if i == 0
    counts[i] = 0
  elsif ss[i-1]=='A' && ss[i]=='C'
    counts[i] = counts[i-1] + 1
  else
    counts[i] = counts[i-1]
  end
end

lrs.each do |lr|
  l, r = lr
  puts counts[r-1] - counts[l-1]
end
