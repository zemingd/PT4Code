n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
kind = Array.new(n,0)
kind_num = 0
n.times { |i|
	kind[a[i]-1] += 1
	if kind[a[i]-1] == 1
		kind_num += 1
	end
}
del = kind_num - k #削除するべき数
kind.sort!
i = 0
while true
	if kind[i] == 0
		kind.delete_at(i)
	else
		break
	end
end
p result = kind[0..del-1].inject { |mem, var| mem += var }
