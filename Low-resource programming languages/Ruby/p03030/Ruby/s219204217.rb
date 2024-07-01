n = gets.chomp.to_i

m = {}
1.upto(n) do |i|
	l = gets.chomp.split()
	k = l[0]
	item = [i, l[1].to_i]
	if m.has_key?(k)
		items = m[k]
		items.append(item)
	else
		m[k] = [item]
	end
end

ks = m.keys.sort
ks.each do |k|
	items = m[k].sort_by{|x| x[1]}.reverse
	items.each do |item|
		puts(item[0])
	end
end
