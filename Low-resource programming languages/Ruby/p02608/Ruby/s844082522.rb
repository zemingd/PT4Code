n = gets.chomp.to_i

x=1;y=1;z=1;
arr = Array.new(n, 0)
rt = Math.sqrt(n).ceil
x.upto(rt) do |a|
	y.upto(rt) do |b|
		z.upto(rt) do |c|
			ngo = a*a+b*b+c*c+a*b+b*c+c*a
			if ngo <= n
				arr[ngo - 1] += 1
			end
		end
	end
end

arr.each do |a|
	puts a 
end
