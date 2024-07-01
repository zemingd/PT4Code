n,m = gets.split.map(&:to_i)
s = []
m.times do
  a = gets.split.map(&:to_i)
  a.shift
  s << a
end
cond = gets.split.map(&:to_i)
ans = 0

0.upto((1 << n)-1) do |i|
  judge = true
  0.upto(m-1) do |j|
    count = 0
    s[j].each do |k|
      if i & (1 << (k-1)) > 0
        count += 1
      end
    end
    if count%2 != cond[j]
      judge = false
      break
    end
  end
  if judge
    ans += 1
  end
end
puts ans