h, n = gets.split(" ").map(&:to_i)
a = gets.split.map(&:to_i)

i = 0
sum = 0
while i < n
  sum += a[i]
  i += 1
end

if sum < h
  puts 'No'
  exit
end

puts 'Yes'