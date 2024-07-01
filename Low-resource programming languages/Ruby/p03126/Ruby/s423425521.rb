n, m = gets.split.map(&:to_i)
ary  = Array.new(m, 0)
n.times do
  ans = gets.split.map(&:to_i)
  for i in 1 .. ans[0]
    ary[ans[i] - 1] += 1
  end
end
cnt = 0
ary.each do |a|
  if a == n
    cnt += 1
  end
end
puts cnt
