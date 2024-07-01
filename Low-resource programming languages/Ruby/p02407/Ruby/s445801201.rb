n = gets.chomp.to_i
arr = gets.chomp.split("\s")

arr_rev = Array.new(n)
for i in 0..n - 1
	arr_rev[i] = arr[-1 * (i + 1)].to_i
end
p arr_rev