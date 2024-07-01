arr = $stdin.gets.chomp.split(" ")

if
  arr[0] > arr[1]
  puts ">"
elsif
  arr[0] < arr[1]
  puts "<"
else
  puts "="
end