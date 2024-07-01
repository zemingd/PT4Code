n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)

count = 0

for i in 1..a.length-2 do
tmp = [a[i-1], a[i], a[i+1]]
if tmp.sort[1] == a[i]
count += 1
end
end
print(count)