arr = $stdin.gets.chomp.split(" ")
arr.map! do |a_j|
 a_j.to_i
end

if arr[0]%2 == 0 or arr[1]%2 == 0
  puts "No"
else
  puts "Yes"
end