n = gets.to_i
arr = []
cnt = 0
n.times do
  arr << gets.to_i
end

x = 1

while x != 2
  x = arr[x-1]
  cnt += 1
  if (cnt-1) == arr[arr[x-1]].to_i
    puts "-1"
    exit
  end
end

puts cnt