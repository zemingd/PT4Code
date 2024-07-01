arr = gets.chomp.split(" ")
i=0
arr.map!{|item| item.to_i}
if arr[0] == arr[1]+arr[2]
  puts "Yes"
elsif arr[1] == arr[2] + arr[0]
  puts "Yes"
elsif arr[2] == arr[0] + arr[1]
  puts "Yes"
else
  puts "No"
end