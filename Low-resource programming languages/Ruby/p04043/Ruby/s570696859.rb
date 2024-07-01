arr = $stdin.gets.chomp.split(" ")
arr.map! do |a_j|
a_j.to_i
end

if arr[0].size == 7 and arr[1].size == 5 and arr[2] == 5
  puts "YES"
elsif arr[0].size == 5 and arr[1].size == 7 and arr[2] == 5
  puts "YES"
elsif arr[0].size == 5 and arr[1].size == 5 and arr[2] == 7
  puts "YES"
else
  puts "NO"
end
  