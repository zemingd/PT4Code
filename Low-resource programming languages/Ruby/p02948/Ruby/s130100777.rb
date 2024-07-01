N, M = gets.split(' ').map(&:to_i)
works = Array.new
N.times do |i|
	a, b = gets.split(' ').map(&:to_i)
	works.push([a, b])
end
works.sort_by!{|w| -w[1]}

ans = 0
wl = []
cnt = 0
works.each do |x, y|
	t = wl.bsearch_index{|n| n >= x}
	if t == nil
        t = cnt
    end
	if cnt - t <= M - x
		ans += y
		wl.insert(t, x)
		cnt += 1
	end
	if cnt == M
        break
    end
end
puts ans