gets;
A = gets(p).split.map(&:to_i)
ans = 0

while A[0] != nil
	ans += 1 if A.count(A[0]).odd?
	A.delete(A[0])
end

print ans