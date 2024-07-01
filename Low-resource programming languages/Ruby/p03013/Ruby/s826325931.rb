input = gets.chomp.split(" ")
n = input[0].to_i
m = input[1].to_i

div = 1000000007

a = []
for i in 1..m do
    a.push(gets.chomp.to_i)
end

p0 = [0, 1]
for i in 2..n do
    p0.push((p0[i-1] + p0[i-2])% div)
end

if m == 0
    p (p0[n]+p0[n-1])%div
else
a.uniq!
step = [a[0]]
for i in 1..a.size-1
    step.push(a[i]-a[i-1]-1)
end
step.push(n-a[a.size-1])


ans = 1

for i in 1..step.size do
    ans *= p0[step[i-1]]
    ans = ans % div
end

p ans
end