n = gets.to_i
arr = []
cnt = 0
n.times do
  arr << gets.to_i
end

x = 1

while x != 2
  cnt += 1
  x = arr[x-1]
  if cnt == 100
    puts "-1"
    exit
  end
end