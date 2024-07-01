n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)
od = Array.new(arr.length.even? ? n / 2 : n / 2 + 1)
ev = Array.new(n / 2)

od.length.times do |i|
	od[i] = arr[i * 2]
	i += 1
end
ev.length.times do |i|
	ev[i] = arr[i * 2 + 1]
	i += 1
end

# p od
# p ev

odhash = {}
od.each do |o|
	if odhash.has_key?(o)
		odhash[o] += 1
	else
		odhash[o] = 1
	end
end
evhash = {}
ev.each do |e|
	if evhash.has_key?(e)
		evhash[e] += 1
	else
		evhash[e] = 1
	end
end

# p odhash
# p evhash

# p odhash.sort
# p evhash.sort

ods = odhash.sort
evs = evhash.sort

oi = 0
ei = 0
flag = true
while ods[oi][0] == evs[ei][0]
	if ods[oi][1] > evs[ei][1]
		ei += 1
	else
		oi += 1
	end
	if oi >= ods.length || ei >= evs.length
		flag = false
		break
	end
end

if !flag
	ngo = n - (n / 2)
	ngo -= 1 if !n.even?
	puts ngo
	exit
end

#puts "ei:#{ei} oi:#{oi}"
puts (ev.length - evs[ei][1]) + (od.length - ods[oi][1])

