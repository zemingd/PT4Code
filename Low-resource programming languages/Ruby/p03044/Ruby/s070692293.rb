N = gets.chomp.to_i
to = Array.new(N){[]}
cost = Array.new(N){[]}

(N-1).times do
	u,v,w = gets.split.map(&:to_i)
	to[u-1] << [v-1,(w.even? ? 1:-1)]
	to[v-1] << [u-1,(w.even? ? 1:-1)]
end
ans = Array.new(N){1}
q = [0]
flag = Array.new(N){false}

while !q.empty? do
	qc = q.shift
	to[qc].each do |t|
		next if flag[t[0]]
		flag[t[0]] = true
		q << t[0]
		ans[t[0]] *= t[1]
	end
end

ans.each do |a|
	puts (a==1 ? 1 : 0)
end