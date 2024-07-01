n = gets.to_i
as = gets.split.map(&:to_i)
as = as.each_with_index.sort.map(&:last)
for a in as do
	print(a+1, " ")
end
print("\n")