n = gets.split

num[] = gets.split(" ").map(&:to_i)

cnt = 0

line[]

for i in 0..n do{
for j in n..1 do{
if num[j] < num[j-1]
work = num[j]
num[j] = num[j-1]
num[j-1] = work
cnt += 1
end
line.push(i)
}
puts (cnt)
}