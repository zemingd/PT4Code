cnt = {0 => 5}
gets
gets.split.each do |x|
	x = x.to_i
	cnt[x] += 1 if cnt[x]
	cnt[x] = 1 if !cnt[x]
end
cnt.delete_if{|k, v| v < 2}
ans = cnt.keys.sort
if ans[-1] > 3
	p ans[-1]**2
	exit(0)
end
p ans[-1] * ans[-2]