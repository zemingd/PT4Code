n = gets.chomp.to_i

def search(n)
	x=1;y=1;z=1;
	cnt = 0
	rt = Math.sqrt(n).ceil
	x.upto(rt) do |a|
		y.upto(rt) do |b|
			z.upto(rt) do |c|
				cnt += 1 if a*a+b*b+c*c+a*b+b*c+c*a == n
			end
		end
	end
	return cnt 
end

1.upto(n) do |i|
	puts search(i)
end

