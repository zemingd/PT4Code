n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i)
current = 0
count = 0
for i in 0..(n-1)
  if arr[i] == current + 1
    current = arr[i]
  else
    count += 1
  end
end
if current == 0
  puts -1
else
  puts count
end