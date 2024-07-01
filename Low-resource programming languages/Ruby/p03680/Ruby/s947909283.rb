n = gets.to_i
#b,c=gets.chomp.split(" ").map(&:to_i);
#s = gets.chomp
#print("#{a+b+c} #{s}\n")

arr = []
n.times do
  arr << (gets.to_i - 1)
end


now = 0
count = 0
while (now != 1 && arr[now] != 0) do
  count += 1
  tmp = now
  now = arr[now]
  arr[tmp] = 0
end

if now == 1
  puts count
else
  puts "-1"
end
