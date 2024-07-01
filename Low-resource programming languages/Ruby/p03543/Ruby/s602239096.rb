arr = $stdin.gets.chomp.split("")
arr.map! do |a_j|
a_j.to_i
end

if arr[1] != arr[2]
  puts "No"
elsif arr[0] != arr[1] and arr[2] != arr[3]
  puts "No"  
else
  puts "Yes"
end