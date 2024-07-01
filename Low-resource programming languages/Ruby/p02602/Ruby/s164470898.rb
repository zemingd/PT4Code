n, k = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

multi = 1
0.upto(k) do |a|
	multi *= arr[a]
end

ans = ""

k.upto(n-1) do |a|
	ngo = multi / arr[a-k] * arr[a]
	#puts "multi:#{multi} ngo:#{ngo}"
	ans += ngo > multi ? "Yes\n" : "No\n"
	multi = ngo
end

puts ans




