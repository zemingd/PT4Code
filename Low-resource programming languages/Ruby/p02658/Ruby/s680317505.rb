n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i).sort.reverse
if arr[-1] == 0
  puts 0
  exit
end
sum = 1
i = 0
while i < n
  if sum > 10**18
    puts "-1"
    exit
  end
  sum *= arr[i]
  i += 1
end
puts sum