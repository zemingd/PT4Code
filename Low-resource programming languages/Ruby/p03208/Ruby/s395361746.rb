n_ks = gets.chomp
n_ks = n_ks.split(" ")
n = n_ks[0].to_i
k = n_ks[1].to_i
h = Array.new()
for i in 0..n-1
	h[i] = gets.chomp.to_i
end

h.sort!

min_dif = nil
for i in 0..n-k
	dif = h[k+i-1]-h[i]
	if min_dif == nil || dif <= min_dif
		min_dif = dif
	end
end

puts min_dif.to_s