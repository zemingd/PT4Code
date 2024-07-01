str1 = gets().split(" ")
l = gets().split(" ")

n = str1[0].to_i
k = str1[1].to_i

for i in 0..n-1
	l[i].to_i
end

l = l.sort

sum = 0

for j in 0..k-1
	sum = sum + l[n-1-j].to_i
end

print(sum,"\n")