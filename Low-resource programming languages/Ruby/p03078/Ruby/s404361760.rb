x,y,z,k = $stdin.gets.split.map(&:to_i)
a_ary = $stdin.gets.split.map(&:to_i).sort.reverse
b_ary = $stdin.gets.split.map(&:to_i).sort.reverse
c_ary = $stdin.gets.split.map(&:to_i).sort.reverse
ai,bi,ci = 0,0,0
a=a_ary[ai]
b=b_ary[bi]
c=c_ary[ci]
1005.times do |i|
	max = [a,b,c].max
	if a == max
		ai += 1
		a = a_ary[ai]
		a ||= 0
	elsif b == max
		bi += 1
		b = b_ary[bi]
		b ||= 0
	elsif c == max
		ci += 1
		c = c_ary[ci]
		c  ||= 0
	end
	if a==0&&b==0&&c==0
		break
	end
end

a_ary = a_ary[0..ai]
b_ary = b_ary[0..bi]
c_ary = c_ary[0..ci]
result = []
a_ary.size.times do |a|
	b_ary.size.times do |b|
		c_ary.size.times do |c|
			result.push(a_ary[a]+b_ary[b]+c_ary[c])
		end
	end
end
result.sort!.reverse!
k.times do |i|
	puts result[i]
end