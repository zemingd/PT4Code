n = gets().to_i
s = Array.new(n,0)
for i in 0..n-1
	s[i] = gets().to_i
end

s.sort!

ichi = Array.new(n,0)

sum = 0
ten = 0

for j in 0..n-1
	sum = sum + s[j]
	ichi[j] = s[j] % 10
end

if sum % 10 == 0
	for k in 0..n-1
		if ichi[k] != 0
			ten = sum - s[k]
			break
		end
	end
else
	ten = sum
end

print(ten,"\n")