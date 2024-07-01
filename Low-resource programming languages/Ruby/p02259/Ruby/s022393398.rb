def swap(n1,n2)
	tmp = n2
	n2 = n1
	n1 = tmp
end

def bubble_sort(ary[])
	flag = 1
	while (flag) do
		flag = 0
		for j in N-1..1 do
			if(ary[j]<a[j-1]) then
				swap(a[j],a[j-1])
				flag = 1
			end

		end

	end
	
end
#INPUT
gets
ary = []
ary = gets.split().map(&:to_i)
#outputs
puts ary.join