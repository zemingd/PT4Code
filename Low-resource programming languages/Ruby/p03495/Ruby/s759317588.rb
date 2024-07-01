n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
kind = Array.new(n,0)
n.times { |i|
	kind[a[i]-1] += 1
}
kind.sort!
i = 0
while true
	if kind[i] == 0
		kind.delete_at(i)
	else
		break
	end
end
del = kind.size-k-1
if del >= 0
	p result = kind[0..del].inject { |mem, var| mem += var }
else
	p 0
end
