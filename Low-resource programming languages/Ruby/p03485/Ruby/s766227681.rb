arr = gets.chomp.split(" ").map(&:to_i)
if((arr[0] + arr[1]) % 2 == 1)
  puts (arr[0] + arr[1]) / 2 + 1
else
  puts (arr[0] + arr[1]) / 2
end