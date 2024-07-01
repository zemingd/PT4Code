n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)
i = 0
count = 0
correct_arr = (1..n).to_a
while i < n
  if arr[i] != correct_arr[i]
    count += 1
  end
  i += 1
end
if count == 0 || count == 2
  puts "YES"
else
  puts "NO"
end