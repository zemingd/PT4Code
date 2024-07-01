def positions(s, subs)
  res = []
  i = 0
  while true
    tmp = s.index(subs, i)
    if tmp
      res.push(tmp)
      i = tmp + subs.size
    else
      break
    end
  end
  return res
end

n, q = gets.split.map(&:to_i)
s = gets.chomp
spans = q.times.map { gets.split.map(&:to_i) }
pos = positions(s, "AC")

spans.each do |l, r|
  puts pos.count { |i| l-1 <= i && i + 1 <= r-1 }
end
