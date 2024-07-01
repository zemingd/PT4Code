N = gets.to_i
a = gets.split(' ').map(&:to_i).sort
b = a.uniq

ans = "No"
if b.size == 1 && b[0] == 0
	ans = "Yes"
end
if N % 3 == 0 && a[0] ^ a[N/3] == a[N*2/3]
	ans = "Yes"
end

puts ans