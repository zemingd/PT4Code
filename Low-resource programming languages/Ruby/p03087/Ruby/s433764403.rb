n,q = gets.split.map(&:to_i)
s = gets.chomp

lrs = []
q.times do
  lrs << gets.split.map(&:to_i)
end

lrs.each do |lr|
  cnt = 0
  l,r = lr
  sub = s[l-1, r-l+1]
  sub.length.times do |i|
    if sub[i+1]
      cnt += 1 if sub[i] == "A" && sub[i+1] == "C"
    end
  end
  puts cnt
end
