n, a, b, c = gets.chomp.split.map(&:to_i)
arr = Array.new(n)
n.times do |i|
	arr[i] = gets.chomp.to_i
end

min = 1145141919
mpm = 1145141919
[0, 1, 2, 3].repeated_permutation(n) do |bits|
	uniq = bits.uniq
	next if uniq.index(0) == nil || uniq.index(1) == nil || uniq.index(2) == nil

	abc = Array.new(4,0)
	bits.each_with_index do |bit, i|
		abc[bit] += arr[i]
	end
	sa = (abc[0]-a).abs + (abc[1]-b).abs + (abc[2]-c).abs
	mp = 0
	0.upto(2) do |j|
		mp += [(bits.count{|bit| bit == j} - 1), 0].max * 10
	end
	mp += sa
	if mp < mpm
		mpm = mp
		#puts "mpm:#{mpm}"
		#p bits
	end
end
puts mpm