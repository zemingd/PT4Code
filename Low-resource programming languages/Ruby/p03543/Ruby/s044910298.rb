arr = gets.chomp.split('')
if (arr[0] == arr[1] && arr[1] == arr[2])
  puts "Yes"
elsif (arr[1] == arr[2] && arr[2] == arr[3])
  puts "Yes"
else
  puts "No"
end
