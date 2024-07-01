n = gets.chomp.to_i
arr = []

for i in 1..100
  for j in 2..10
    arr << i ** j
  end
end
arr = arr.sort.uniq
for i in 0..100
  if (arr[i] > n)
    puts arr[i-1]
    exit
  end
end