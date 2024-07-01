N, K, Q = gets.split(' ').map(&:to_i)
r = []
N.times {r << K - Q}
Q.times {
	ans_num = gets.to_i
  	r[ans_num - 1] += 1
}
r.each do |num|
	puts num > 0 ? "Yes" : 'No'
end